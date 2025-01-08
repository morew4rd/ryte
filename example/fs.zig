const std = @import("std");
const sfetch = @import("sokol_fetch");
const physfs = @import("physfs");

pub const Blob = struct {
    status: FetchStatus,
    name: []const u8,
    buffer: []u8,
    is_valid: bool = true, // Add this flag
};

pub const FetchStatus = enum {
    ready,
    in_progress,
    failed,
};

pub const FsError = error{
    init_failed,
    write_dir_failed,
    read_dir_failed,
    read_blob_failed,
    cant_open_file,
    can_read_fully,
    not_a_directory,
    out_of_memory,
    invalid_path,
};

var allocator: std.mem.Allocator = undefined;

var dropped_files: std.ArrayList(*Blob) = undefined;
var fetches: std.AutoHashMap(sfetch.sfetch_handle_t, *Blob) = undefined;

pub fn init(allocator_: std.mem.Allocator) !void {
    allocator = allocator_;
    const success = physfs.PHYSFS_init("");
    if (success == 0) {
        return error.FSInitFailed;
    }

    const sfetch_desc = sfetch.sfetch_desc_t{
        .logger = .{
            .func = slog_func,
        },
    };
    sfetch.sfetch_setup(&sfetch_desc);

    dropped_files = std.ArrayList(*Blob).init(allocator);
    fetches = std.AutoHashMap(sfetch.sfetch_handle_t, *Blob).init(allocator);
}

pub fn deinit() void {
    sfetch.sfetch_shutdown();
    _ = physfs.PHYSFS_deinit();

    for (dropped_files.items) |blob| {
        removeBlob(blob);
    }
    dropped_files.deinit();

    var fetch_iter = fetches.iterator();
    while (fetch_iter.next()) |entry| {
        removeBlob(entry.value_ptr.*);
    }
    fetches.deinit();
}

// File System Mounting Functions
pub fn mountSetWritablePath(localpath: []const u8) FsError!void {
    if (!isDirectory(localpath)) {
        return error.not_a_directory;
    }

    const success = physfs.PHYSFS_setWriteDir(localpath.ptr);
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to set PHYSFS write dir: {} {}\n", .{ success, errcode });
        return error.write_dir_failed;
    }
}

pub fn mountAddReadablePath(localpath: []const u8, mountpath: []const u8) !void {
    if (!isDirectory(localpath)) {
        return error.not_a_directory;
    }

    const success = physfs.PHYSFS_mount(localpath.ptr, mountpath.ptr, 1);
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to mount dir: {} {}\n", .{ success, errcode });
        return error.read_dir_failed;
    }
}

pub fn mountAddReadablePathBlobZip(blob: *Blob, mountpath: ?[]const u8) !void {
    const mount_path = mountpath orelse "/";
    const success = physfs.PHYSFS_mountMemory(blob.buffer.ptr, blob.size, null, blob.name.ptr, mount_path.ptr, 1);

    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to mount memory zip: {} {}\n", .{ success, errcode });
        return error.read_blob_failed;
    }
}

pub fn mountAddReadablePathZip(localzippath: []const u8, mountpath: []const u8) !void {
    const blob = try loadFile(localzippath);
    return mountAddReadablePathBlobZip(blob, mountpath);
}

// File Operations
pub fn loadFile(fullpath: []const u8) !*Blob {
    const file = physfs.PHYSFS_openRead(fullpath.ptr) orelse return error.FSCantOpenFile;
    defer _ = physfs.PHYSFS_close(file);

    const len: usize = @intCast(physfs.PHYSFS_fileLength(file));
    const buf = try allocator.alloc(u8, len);
    errdefer allocator.free(buf);

    const read_len: usize = @intCast(physfs.PHYSFS_readBytes(file, buf.ptr, len));
    if (len != read_len) {
        return error.FSCantReadFully;
    }

    const name = try allocator.dupe(u8, fullpath);
    errdefer allocator.free(name);

    const blob = try allocator.create(Blob);
    errdefer allocator.destroy(blob);

    blob.* = Blob{
        .status = .ready,
        .name = name,
        .buffer = buf,
    };

    return blob;
}

pub fn saveBlobToFile(blob: *Blob, path: ?[]const u8) !void {
    const full_path = if (path) |p|
        try std.fmt.allocPrint(allocator, "{s}/{s}", .{ p, blob.name })
    else
        try allocator.dupe(u8, blob.name);
    defer allocator.free(full_path);

    const file = physfs.PHYSFS_openWrite(full_path.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file for writing: {s}: {}\n", .{ full_path, errcode });
        return error.FSCantOpenFile;
    };

    _ = physfs.PHYSFS_writeBytes(file, blob.buffer.ptr, blob.size);
    physfs.PHYSFS_close(file);
}

pub fn getBlobData(blob: *Blob) []const u8 {
    return blob.buffer;
}

pub fn getBlobName(blob: *Blob) []const u8 {
    return blob.name;
}

pub fn setBlobName(blob: *Blob, new_name: []const u8) !void {
    const old_name = blob.name;
    blob.name = try allocator.dupe(u8, new_name);
    allocator.free(old_name);
}

// Text File Operations
pub fn loadTextFile(fullpath: []const u8) ![]const u8 {
    const blob = try loadFile(fullpath);
    return blob.buffer;
}

pub fn saveTextFile(fullpath: []const u8, text: []const u8) !void {
    const file = physfs.PHYSFS_openWrite(fullpath.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file for writing: {s}: {}\n", .{ fullpath, errcode });
        return error.FSCantOpenFile;
    };

    _ = physfs.PHYSFS_writeBytes(file, text.ptr, text.len);
    physfs.PHYSFS_close(file);
}

pub fn appendTextFile(fullpath: []const u8, text: []const u8) !void {
    const file = physfs.PHYSFS_openAppend(fullpath.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file for appending: {s}: {}\n", .{ fullpath, errcode });
        return error.FSCantOpenFile;
    };

    _ = physfs.PHYSFS_writeBytes(file, text.ptr, text.len);
    physfs.PHYSFS_close(file);
}

// Dropped Files Handling
pub fn handlePathDrop(paths: []const []const u8) !void {
    for (paths) |path| {
        const blob = try loadFile(path);
        try dropped_files.append(blob);
    }
}

pub fn getDroppedFileCount() usize {
    return dropped_files.items.len;
}

pub fn getDroppedFileBlobs() []const *Blob {
    return dropped_files.items;
}

pub fn clearDroppedFiles() void {
    for (dropped_files.items) |blob| {
        removeBlob(blob);
    }
    dropped_files.clearRetainingCapacity();
}

pub fn addDroppedFile(name: []const u8, data: []const u8) !void {
    const blob = try createBlobFromBuffer(data, name);
    try dropped_files.append(blob);
}

// Fetch Operations
fn fetchFileCallback(response_: [*c]const sfetch.sfetch_response_t) callconv(.c) void {
    const response: *const sfetch.sfetch_response_t = @ptrCast(response_);
    if (response.finished) {
        if (fetches.get(response.handle)) |blob| {
            if (response.failed) {
                blob.status = .failed;
                std.log.err("Fetch failed for: {s}\n", .{blob.name});
                // Remove from fetches map
                _ = fetches.remove(response.handle);
            } else {
                if (response.data.size != blob.buffer.len) {
                    if (allocator.resize(blob.buffer, response.data.size)) {} else {
                        blob.status = .failed;
                        // Remove from fetches map
                        _ = fetches.remove(response.handle);
                        return;
                    }
                }
                blob.status = .ready;
                std.log.info("Fetch succeeded for: {s}\n", .{blob.name});
                // Remove from fetches map
                _ = fetches.remove(response.handle);
            }
        }
    }
}

pub fn fetchFileAsync(url: []const u8, blobname: []const u8, estimated_size: usize) !*Blob {
    const blob = try allocator.create(Blob);
    errdefer allocator.destroy(blob);

    blob.* = Blob{
        .status = .in_progress,
        .name = try allocator.dupe(u8, blobname),
        .buffer = try allocator.alloc(u8, estimated_size),
    };

    const req = sfetch.sfetch_request_t{
        .path = url.ptr,
        .callback = fetchFileCallback,
        .buffer = .{
            .ptr = blob.buffer.ptr,
            .size = estimated_size,
        },
    };

    const fetch_handle = sfetch.sfetch_send(&req);
    try fetches.put(fetch_handle, blob);

    return blob;
}

pub fn checkFetchStatus(blob: *Blob) FetchStatus {
    return blob.status;
}

pub fn updateFetchTasks() void {
    sfetch.sfetch_dowork();
}

// Utility Functions
pub fn createBlobFromBuffer(buf: []const u8, blobname: []const u8) !*Blob {
    const blob = try allocator.create(Blob);
    errdefer allocator.destroy(blob);

    const blob_buf = try allocator.alloc(u8, buf.len);
    errdefer allocator.free(blob_buf);

    const name = try allocator.dupe(u8, blobname);
    errdefer allocator.free(name);

    @memcpy(blob_buf, buf);

    blob.* = Blob{
        .status = .ready,
        .name = name,
        .buffer = blob_buf,
    };

    return blob;
}

pub fn createBlobEmpty(size: usize, name: []const u8) !*Blob {
    const blob = try allocator.create(Blob);
    const blob_buf = try allocator.alloc(u8, size);

    blob.* = Blob{
        .status = .ready,
        .name = try allocator.dupe(u8, name),
        .buffer = blob_buf,
    };

    return blob;
}

pub fn removeBlob(blob: *Blob) void {
    // Check if already freed
    if (!blob.is_valid) return;

    if (blob.buffer.len > 0) {
        allocator.free(blob.buffer);
        blob.buffer = &.{};
    }
    if (blob.name.len > 0) {
        allocator.free(blob.name);
        blob.name = &.{};
    }

    blob.is_valid = false; // Mark as invalid
    allocator.destroy(blob);
}

fn isDirectory(path: []const u8) bool {
    const dir = std.fs.cwd().openDir(path, .{}) catch |err| {
        std.log.warn("isDirectory failed: {}--{s}", .{ err, path });
        return false;
    };
    const stat_info = dir.stat() catch |err| {
        std.log.warn("isDirectory failed: {}--{}", .{ err, dir });
        return false;
    };
    _ = stat_info;
    return true;

    // if (stat_info) |stat| {
    //     _ = stat;
    //     return std.os.S.ISDIR(stat_info.mode);
    // } else |err| {
    //     std.log.warn("Cannot access: {s}\n", .{err});
    //     return false;
    // }
}

fn slog_func(msg: [*c]const u8, line: u32, column: u32, filename: [*c]const u8, severity: u32, mm: [*c]const u8, user_data: ?*anyopaque) callconv(.c) void {
    _ = user_data;
    _ = filename;
    _ = mm;
    std.debug.print("[{}:{}] {}: {s}\n", .{ line, column, severity, msg });
}

// test "basic file operations" {
//     try init();
//     defer deinit();

//     // Test file loading
//     const test_file = "test.txt";
//     const blob = try loadFile(test_file);
//     defer removeBlob(blob);

//     try std.testing.expectEqualStrings("expected content", blob.buffer);

//     // Test file saving
//     const new_blob = try createBlobFromBuffer("new content", "new.txt");
//     defer removeBlob(new_blob);
//     try saveBlobToFile(new_blob, null);

//     // Verify saved content
//     const saved_blob = try loadFile("new.txt");
//     defer removeBlob(saved_blob);
//     try std.testing.expectEqualStrings("new content", saved_blob.buffer);
// }
