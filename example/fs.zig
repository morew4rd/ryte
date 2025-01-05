const std = @import("std");
const sfetch = @import("sokol_fetch");
const physfs = @import("physfs");

const KyteBlob = struct {
    status: KyteFetchStatus,
    name: []const u8,
    buffer: []u8,
    size: usize,
};

const KyteFetchStatus = enum {
    K_BLOB_READY,
    K_BLOB_IN_PROGRESS,
    K_BLOB_FAILED,
};

const FSError = error{
    FSInitFailed,
    WriteDirFailed,
    ReadDirFailed,
    ReadBlobFailed,
    FSCantOpenFile,
    FSCantReadFully,
    NotADirectory,
    OutOfMemory,
    InvalidPath,
    // Add more specific errors as needed
};

var gpa = std.heap.GeneralPurposeAllocator(.{}){};

// TODO: centralize allocators
pub const allocator = gpa.allocator();

var dropped_files: std.ArrayList(*KyteBlob) = undefined;
var fetches: std.AutoHashMap(sfetch.sfetch_handle_t, *KyteBlob) = undefined;

pub fn init() !void {
    const success = physfs.PHYSFS_init("");
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to init PHYSFS: {} {}\n", .{ success, errcode });
        return error.FSInitFailed;
    }

    const sfetch_desc = sfetch.sfetch_desc_t{
        .logger = .{
            .func = slog_func,
        },
    };
    sfetch.sfetch_setup(&sfetch_desc);

    dropped_files = std.ArrayList(*KyteBlob).init(allocator);
    fetches = std.AutoHashMap(sfetch.sfetch_handle_t, *KyteBlob).init(allocator);
}

pub fn deinit() void {
    sfetch.sfetch_shutdown();
    _ = physfs.PHYSFS_deinit();

    // Clean up all blobs
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
pub fn mountSetWritablePath(localpath: []const u8) FSError!void {
    if (!isDirectory(localpath)) {
        return error.NotADirectory;
    }

    const success = physfs.PHYSFS_setWriteDir(localpath.ptr);
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to set PHYSFS write dir: {} {}\n", .{ success, errcode });
        return error.WriteDirFailed;
    }
}

pub fn mountAddReadablePath(localpath: []const u8, mountpath: []const u8) !void {
    if (!isDirectory(localpath)) {
        return error.NotADirectory;
    }

    const success = physfs.PHYSFS_mount(localpath.ptr, mountpath.ptr, 1);
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to mount dir: {} {}\n", .{ success, errcode });
        return error.ReadDirFailed;
    }
}

pub fn mountAddReadablePathBlobZip(blob: *KyteBlob, mountpath: ?[]const u8) !void {
    const mount_path = mountpath orelse "/";
    const success = physfs.PHYSFS_mountMemory(blob.buffer.ptr, blob.size, null, blob.name.ptr, mount_path.ptr, 1);

    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to mount memory zip: {} {}\n", .{ success, errcode });
        return error.ReadBlobFailed;
    }
}

pub fn mountAddReadablePathZip(localzippath: []const u8, mountpath: []const u8) !void {
    const blob = try loadFile(localzippath);
    return mountAddReadablePathBlobZip(blob, mountpath);
}

// File Operations
pub fn loadFile(fullpath: []const u8) !*KyteBlob {
    const file = physfs.PHYSFS_openRead(fullpath.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file: {s}: {}\n", .{ fullpath, errcode });
        return error.FSCantOpenFile;
    };

    const len: usize = @intCast(physfs.PHYSFS_fileLength(file));
    const buf = try allocator.alloc(u8, len);
    const read_len: usize = @intCast(physfs.PHYSFS_readBytes(file, buf.ptr, len));
    if (len != read_len) {
        std.log.warn("File not fully read: {s}. File size is {} bytes, but read {} bytes.\n", .{ fullpath, len, read_len });
        return error.FSCantReadFully;
    }

    _ = physfs.PHYSFS_close(file);

    const blob = try allocator.create(KyteBlob);
    blob.* = KyteBlob{
        .status = .K_BLOB_READY,
        .name = try allocator.dupe(u8, fullpath),
        .buffer = buf,
        .size = read_len,
    };

    return blob;
}

pub fn saveBlobToFile(blob: *KyteBlob, path: ?[]const u8) !void {
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

pub fn getBlobData(blob: *KyteBlob) []const u8 {
    return blob.buffer;
}

pub fn getBlobName(blob: *KyteBlob) []const u8 {
    return blob.name;
}

pub fn setBlobName(blob: *KyteBlob, new_name: []const u8) !void {
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

pub fn getDroppedFileBlobs() []const *KyteBlob {
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
fn fetch_file_callback(response: *const sfetch.sfetch_response_t) void {
    if (response.finished) {
        if (fetches.get(response.handle)) |blob| {
            if (response.failed) {
                blob.status = .K_BLOB_FAILED;
                std.log.err("Fetch failed for: {s}\n", .{blob.name});
            } else {
                // Resize buffer if needed
                if (response.data.size != blob.size) {
                    blob.buffer = allocator.resize(blob.buffer, response.data.size) catch {
                        blob.status = .K_BLOB_FAILED;
                        return;
                    };
                    blob.size = response.data.size;
                }
                blob.status = .K_BLOB_READY;
                std.log.info("Fetch succeeded for: {s}\n", .{blob.name});
            }
        }
    }
}

pub fn fetchFileAsync(url: []const u8, blobname: []const u8, estimated_size: usize) !*KyteBlob {
    const blob = try allocator.create(KyteBlob);
    errdefer allocator.destroy(blob);

    blob.* = KyteBlob{
        .status = .K_BLOB_IN_PROGRESS,
        .name = try allocator.dupe(u8, blobname),
        .buffer = try allocator.alloc(u8, estimated_size),
        .size = estimated_size,
    };

    const req = sfetch.sfetch_request_t{
        .path = url.ptr,
        .callback = fetch_file_callback,
        .buffer = .{
            .ptr = blob.buffer.ptr,
            .size = estimated_size,
        },
    };

    const fetch_handle = sfetch.sfetch_send(&req);
    try fetches.put(fetch_handle, blob);

    return blob;
}

pub fn checkFetchStatus(blob: *KyteBlob) KyteFetchStatus {
    return blob.status;
}

pub fn updateFetchTasks() void {
    sfetch.sfetch_dowork();
}

// Utility Functions
pub fn createBlobFromBuffer(buf: []const u8, blobname: []const u8) !*KyteBlob {
    const blob = try allocator.create(KyteBlob);
    errdefer allocator.destroy(blob);

    const blob_buf = try allocator.alloc(u8, buf.len);
    errdefer allocator.free(blob_buf);

    const name = try allocator.dupe(u8, blobname);
    errdefer allocator.free(name);

    @memcpy(blob_buf, buf);

    blob.* = KyteBlob{
        .status = .K_BLOB_READY,
        .name = name,
        .buffer = blob_buf,
        .size = buf.len,
    };

    return blob;
}

pub fn createBlobEmpty(size: usize, name: []const u8) !*KyteBlob {
    const blob = try allocator.create(KyteBlob);
    const blob_buf = try allocator.alloc(u8, size);

    blob.* = KyteBlob{
        .status = .K_BLOB_READY,
        .name = try allocator.dupe(u8, name),
        .buffer = blob_buf,
        .size = size,
    };

    return blob;
}

pub fn removeBlob(blob: *KyteBlob) void {
    allocator.free(blob.name);
    allocator.free(blob.buffer);
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
