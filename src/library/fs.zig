const std = @import("std");
const sfetch = @import("sokol_fetch");
const physfs = @import("physfs");

pub const Blob = struct {
    status: FetchStatus,
    name: []const u8,
    buffer: []u8,
};

pub const FetchStatus = enum {
    ready,
    in_progress,
    failed,
};

pub const FsErr = error{
    InitFailed,
    WriteDirFailed,
    ReadDirFailed,
    ReadBlobFailed,
    CantOpenFile,
    CantReadFully,
    NotADirectory,
    OutOfMemory,
    InvalidPath,
    InvalidOperation,
    FileNotFound,
    AccessDenied,
    AlreadyExists,
    InvalidArgument,
    SystemResources,
    UnknownError,
};

var allocator: std.mem.Allocator = undefined;

var dropped_files: std.ArrayList(*Blob) = undefined;
var fetches: std.AutoHashMap(sfetch.sfetch_handle_t, *Blob) = undefined;

pub fn initFs(allocator_: std.mem.Allocator) FsErr!void {
    allocator = allocator_;
    const success = physfs.PHYSFS_init("");
    if (success == 0) {
        return FsErr.InitFailed;
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

pub fn deinitFs() void {
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
pub fn mountSetWritablePath(localpath: []const u8) FsErr!void {
    if (!isDirectory(localpath)) {
        return FsErr.NotADirectory;
    }

    const success = physfs.PHYSFS_setWriteDir(localpath.ptr);
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to set PHYSFS write dir: {} {}\n", .{ success, errcode });
        return FsErr.WriteDirFailed;
    }
}

pub fn mountAddReadablePath(localpath: []const u8, mountpath: []const u8) FsErr!void {
    if (!isDirectory(localpath)) {
        return FsErr.NotADirectory;
    }

    const success = physfs.PHYSFS_mount(localpath.ptr, mountpath.ptr, 1);
    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to mount dir: {} {}\n", .{ success, errcode });
        return FsErr.ReadDirFailed;
    }
}

pub fn mountAddReadablePathBlobZip(blob: *Blob, mountpath: ?[]const u8) FsErr!void {
    const mount_path = mountpath orelse "/";
    const success = physfs.PHYSFS_mountMemory(blob.buffer.ptr, blob.buffer.len, null, blob.name.ptr, mount_path.ptr, 1);

    std.log.info("mounting: len: {} name: {s}\n", .{ blob.buffer.len, blob.name });

    if (success == 0) {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to mount memory zip: {} {}: {s} \n", .{ success, errcode, physfs.PHYSFS_getErrorByCode(errcode) });
        return FsErr.ReadBlobFailed;
    }
}

pub fn mountAddReadablePathZip(localzippath: []const u8, mountpath: []const u8) FsErr!void {
    const blob = try loadFile(localzippath);
    return mountAddReadablePathBlobZip(blob, mountpath);
}

// File Operations
pub fn loadFile(fullpath: []const u8) FsErr!*Blob {
    const file = physfs.PHYSFS_openRead(fullpath.ptr) orelse return FsErr.CantOpenFile;
    defer _ = physfs.PHYSFS_close(file);

    const len: usize = @intCast(physfs.PHYSFS_fileLength(file));
    const buf = try allocator.alloc(u8, len);
    errdefer allocator.free(buf);

    const read_len: usize = @intCast(physfs.PHYSFS_readBytes(file, buf.ptr, len));
    if (len != read_len) {
        return FsErr.CantReadFully;
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

pub fn saveBlobToFile(blob: *Blob, path: ?[]const u8) FsErr!void {
    const full_path = if (path) |p|
        try std.fmt.allocPrint(allocator, "{s}/{s}", .{ p, blob.name })
    else
        try allocator.dupe(u8, blob.name);
    defer allocator.free(full_path);

    const file = physfs.PHYSFS_openWrite(full_path.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file for writing: {s}: {}\n", .{ full_path, errcode });
        return FsErr.CantOpenFile;
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

pub fn setBlobName(blob: *Blob, new_name: []const u8) FsErr!void {
    const old_name = blob.name;
    blob.name = try allocator.dupe(u8, new_name);
    allocator.free(old_name);
}

// Text File Operations
pub fn loadTextFile(fullpath: []const u8) FsErr![]const u8 {
    const blob = try loadFile(fullpath);
    return blob.buffer;
}

pub fn saveTextFile(fullpath: []const u8, text: []const u8) FsErr!void {
    const file = physfs.PHYSFS_openWrite(fullpath.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file for writing: {s}: {}\n", .{ fullpath, errcode });
        return FsErr.CantOpenFile;
    };

    _ = physfs.PHYSFS_writeBytes(file, text.ptr, text.len);
    physfs.PHYSFS_close(file);
}

pub fn appendTextFile(fullpath: []const u8, text: []const u8) FsErr!void {
    const file = physfs.PHYSFS_openAppend(fullpath.ptr) orelse {
        const errcode = physfs.PHYSFS_getLastErrorCode();
        std.log.warn("Failed to open file for appending: {s}: {}\n", .{ fullpath, errcode });
        return FsErr.CantOpenFile;
    };

    _ = physfs.PHYSFS_writeBytes(file, text.ptr, text.len);
    physfs.PHYSFS_close(file);
}

// Dropped Files Handling
pub fn handlePathDrop(paths: []const []const u8) FsErr!void {
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

pub fn addDroppedFile(name: []const u8, data: []const u8) FsErr!void {
    const blob = try createBlobFromBuffer(data, name);
    try dropped_files.append(blob);
}

// Fetch Operations
fn fetchFileCallback(response_: [*c]const sfetch.sfetch_response_t) callconv(.C) void {
    const response: *const sfetch.sfetch_response_t = @ptrCast(response_);

    if (fetches.get(response.handle)) |blob| {
        if (response.finished) {
            if (response.failed) {
                // Handle failure
                blob.status = .failed;
                std.log.err("Fetch failed for: {s}\n", .{blob.name});
            } else {
                // Handle success
                if (response.data.size != blob.buffer.len) {
                    // Resize buffer if needed
                    if (allocator.resize(blob.buffer, response.data.size)) {
                        blob.buffer.len = response.data.size;
                    } else {
                        // If resize fails, mark as failed
                        blob.status = .failed;
                        _ = fetches.remove(response.handle);
                        return;
                    }
                }
                blob.status = .ready;
                std.log.info("Fetch succeeded for: {s}\n", .{blob.name});
            }
            // Remove from active fetches
            _ = fetches.remove(response.handle);
        }
    }
}

pub fn fetchFileAsync(url: []const u8, blobname: []const u8, estimated_size: usize) FsErr!*Blob {
    // Create a new blob to track this fetch
    const blob = try allocator.create(Blob);
    errdefer allocator.destroy(blob);

    // Allocate buffer for the estimated size
    const buffer = try allocator.alloc(u8, estimated_size);
    errdefer allocator.free(buffer);

    // Duplicate the name
    const name = try allocator.dupe(u8, blobname);
    errdefer allocator.free(name);

    // Initialize the blob
    blob.* = Blob{
        .status = .in_progress,
        .name = name,
        .buffer = buffer,
    };

    // Create the fetch request
    const req = sfetch.sfetch_request_t{
        .path = url.ptr,
        .callback = fetchFileCallback,
        .buffer = .{
            .ptr = blob.buffer.ptr,
            .size = estimated_size,
        },
    };

    // Send the request and store the handle
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
pub fn createBlobFromBuffer(buf: []const u8, blobname: []const u8) FsErr!*Blob {
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

pub fn createBlobEmpty(size: usize, name: []const u8) FsErr!*Blob {
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
    if (blob.buffer.len > 0) {
        allocator.free(blob.buffer);
        blob.buffer = &.{};
    }
    if (blob.name.len > 0) {
        allocator.free(blob.name);
        blob.name = &.{};
    }

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
}

fn slog_func(msg: [*c]const u8, line: u32, column: u32, filename: [*c]const u8, severity: u32, mm: [*c]const u8, user_data: ?*anyopaque) callconv(.c) void {
    _ = user_data;
    _ = filename;
    _ = mm;
    std.debug.print("[{}:{}] {}: {s}\n", .{ line, column, severity, msg });
}
