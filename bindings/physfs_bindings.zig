pub const PHYSFS_uint8 = u8;
pub const PHYSFS_sint8 = i8;
pub const PHYSFS_uint16 = c_ushort;
pub const PHYSFS_sint16 = c_short;
pub const PHYSFS_uint32 = c_uint;
pub const PHYSFS_sint32 = c_int;
pub const PHYSFS_uint64 = c_ulonglong;
pub const PHYSFS_sint64 = c_longlong;
pub const PHYSFS_compile_time_assert_uint8IsOneByte = [1]c_int;
pub const PHYSFS_compile_time_assert_sint8IsOneByte = [1]c_int;
pub const PHYSFS_compile_time_assert_uint16IsTwoBytes = [1]c_int;
pub const PHYSFS_compile_time_assert_sint16IsTwoBytes = [1]c_int;
pub const PHYSFS_compile_time_assert_uint32IsFourBytes = [1]c_int;
pub const PHYSFS_compile_time_assert_sint32IsFourBytes = [1]c_int;
pub const PHYSFS_compile_time_assert_uint64IsEightBytes = [1]c_int;
pub const PHYSFS_compile_time_assert_sint64IsEightBytes = [1]c_int;
pub const struct_PHYSFS_File = extern struct {
    @"opaque": ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const PHYSFS_File = struct_PHYSFS_File;
pub const struct_PHYSFS_ArchiveInfo = extern struct {
    extension: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    description: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    author: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    url: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    supportsSymlinks: c_int = @import("std").mem.zeroes(c_int),
};
pub const PHYSFS_ArchiveInfo = struct_PHYSFS_ArchiveInfo;
pub const struct_PHYSFS_Version = extern struct {
    major: PHYSFS_uint8 = @import("std").mem.zeroes(PHYSFS_uint8),
    minor: PHYSFS_uint8 = @import("std").mem.zeroes(PHYSFS_uint8),
    patch: PHYSFS_uint8 = @import("std").mem.zeroes(PHYSFS_uint8),
};
pub const PHYSFS_Version = struct_PHYSFS_Version;
pub extern fn PHYSFS_getLinkedVersion(ver: [*c]PHYSFS_Version) void;
pub extern fn PHYSFS_init(argv0: [*c]const u8) c_int;
pub extern fn PHYSFS_deinit() c_int;
pub extern fn PHYSFS_supportedArchiveTypes() [*c][*c]const PHYSFS_ArchiveInfo;
pub extern fn PHYSFS_freeList(listVar: ?*anyopaque) void;
pub extern fn PHYSFS_getLastError() [*c]const u8;
pub extern fn PHYSFS_getDirSeparator() [*c]const u8;
pub extern fn PHYSFS_permitSymbolicLinks(allow: c_int) void;
pub extern fn PHYSFS_getCdRomDirs() [*c][*c]u8;
pub extern fn PHYSFS_getBaseDir() [*c]const u8;
pub extern fn PHYSFS_getUserDir() [*c]const u8;
pub extern fn PHYSFS_getWriteDir() [*c]const u8;
pub extern fn PHYSFS_setWriteDir(newDir: [*c]const u8) c_int;
pub extern fn PHYSFS_addToSearchPath(newDir: [*c]const u8, appendToPath: c_int) c_int;
pub extern fn PHYSFS_removeFromSearchPath(oldDir: [*c]const u8) c_int;
pub extern fn PHYSFS_getSearchPath() [*c][*c]u8;
pub extern fn PHYSFS_setSaneConfig(organization: [*c]const u8, appName: [*c]const u8, archiveExt: [*c]const u8, includeCdRoms: c_int, archivesFirst: c_int) c_int;
pub extern fn PHYSFS_mkdir(dirName: [*c]const u8) c_int;
pub extern fn PHYSFS_delete(filename: [*c]const u8) c_int;
pub extern fn PHYSFS_getRealDir(filename: [*c]const u8) [*c]const u8;
pub extern fn PHYSFS_enumerateFiles(dir: [*c]const u8) [*c][*c]u8;
pub extern fn PHYSFS_exists(fname: [*c]const u8) c_int;
pub extern fn PHYSFS_isDirectory(fname: [*c]const u8) c_int;
pub extern fn PHYSFS_isSymbolicLink(fname: [*c]const u8) c_int;
pub extern fn PHYSFS_getLastModTime(filename: [*c]const u8) PHYSFS_sint64;
pub extern fn PHYSFS_openWrite(filename: [*c]const u8) [*c]PHYSFS_File;
pub extern fn PHYSFS_openAppend(filename: [*c]const u8) [*c]PHYSFS_File;
pub extern fn PHYSFS_openRead(filename: [*c]const u8) [*c]PHYSFS_File;
pub extern fn PHYSFS_close(handle: [*c]PHYSFS_File) c_int;
pub extern fn PHYSFS_read(handle: [*c]PHYSFS_File, buffer: ?*anyopaque, objSize: PHYSFS_uint32, objCount: PHYSFS_uint32) PHYSFS_sint64;
pub extern fn PHYSFS_write(handle: [*c]PHYSFS_File, buffer: ?*const anyopaque, objSize: PHYSFS_uint32, objCount: PHYSFS_uint32) PHYSFS_sint64;
pub extern fn PHYSFS_eof(handle: [*c]PHYSFS_File) c_int;
pub extern fn PHYSFS_tell(handle: [*c]PHYSFS_File) PHYSFS_sint64;
pub extern fn PHYSFS_seek(handle: [*c]PHYSFS_File, pos: PHYSFS_uint64) c_int;
pub extern fn PHYSFS_fileLength(handle: [*c]PHYSFS_File) PHYSFS_sint64;
pub extern fn PHYSFS_setBuffer(handle: [*c]PHYSFS_File, bufsize: PHYSFS_uint64) c_int;
pub extern fn PHYSFS_flush(handle: [*c]PHYSFS_File) c_int;
pub extern fn PHYSFS_swapSLE16(val: PHYSFS_sint16) PHYSFS_sint16;
pub extern fn PHYSFS_swapULE16(val: PHYSFS_uint16) PHYSFS_uint16;
pub extern fn PHYSFS_swapSLE32(val: PHYSFS_sint32) PHYSFS_sint32;
pub extern fn PHYSFS_swapULE32(val: PHYSFS_uint32) PHYSFS_uint32;
pub extern fn PHYSFS_swapSLE64(val: PHYSFS_sint64) PHYSFS_sint64;
pub extern fn PHYSFS_swapULE64(val: PHYSFS_uint64) PHYSFS_uint64;
pub extern fn PHYSFS_swapSBE16(val: PHYSFS_sint16) PHYSFS_sint16;
pub extern fn PHYSFS_swapUBE16(val: PHYSFS_uint16) PHYSFS_uint16;
pub extern fn PHYSFS_swapSBE32(val: PHYSFS_sint32) PHYSFS_sint32;
pub extern fn PHYSFS_swapUBE32(val: PHYSFS_uint32) PHYSFS_uint32;
pub extern fn PHYSFS_swapSBE64(val: PHYSFS_sint64) PHYSFS_sint64;
pub extern fn PHYSFS_swapUBE64(val: PHYSFS_uint64) PHYSFS_uint64;
pub extern fn PHYSFS_readSLE16(file: [*c]PHYSFS_File, val: [*c]PHYSFS_sint16) c_int;
pub extern fn PHYSFS_readULE16(file: [*c]PHYSFS_File, val: [*c]PHYSFS_uint16) c_int;
pub extern fn PHYSFS_readSBE16(file: [*c]PHYSFS_File, val: [*c]PHYSFS_sint16) c_int;
pub extern fn PHYSFS_readUBE16(file: [*c]PHYSFS_File, val: [*c]PHYSFS_uint16) c_int;
pub extern fn PHYSFS_readSLE32(file: [*c]PHYSFS_File, val: [*c]PHYSFS_sint32) c_int;
pub extern fn PHYSFS_readULE32(file: [*c]PHYSFS_File, val: [*c]PHYSFS_uint32) c_int;
pub extern fn PHYSFS_readSBE32(file: [*c]PHYSFS_File, val: [*c]PHYSFS_sint32) c_int;
pub extern fn PHYSFS_readUBE32(file: [*c]PHYSFS_File, val: [*c]PHYSFS_uint32) c_int;
pub extern fn PHYSFS_readSLE64(file: [*c]PHYSFS_File, val: [*c]PHYSFS_sint64) c_int;
pub extern fn PHYSFS_readULE64(file: [*c]PHYSFS_File, val: [*c]PHYSFS_uint64) c_int;
pub extern fn PHYSFS_readSBE64(file: [*c]PHYSFS_File, val: [*c]PHYSFS_sint64) c_int;
pub extern fn PHYSFS_readUBE64(file: [*c]PHYSFS_File, val: [*c]PHYSFS_uint64) c_int;
pub extern fn PHYSFS_writeSLE16(file: [*c]PHYSFS_File, val: PHYSFS_sint16) c_int;
pub extern fn PHYSFS_writeULE16(file: [*c]PHYSFS_File, val: PHYSFS_uint16) c_int;
pub extern fn PHYSFS_writeSBE16(file: [*c]PHYSFS_File, val: PHYSFS_sint16) c_int;
pub extern fn PHYSFS_writeUBE16(file: [*c]PHYSFS_File, val: PHYSFS_uint16) c_int;
pub extern fn PHYSFS_writeSLE32(file: [*c]PHYSFS_File, val: PHYSFS_sint32) c_int;
pub extern fn PHYSFS_writeULE32(file: [*c]PHYSFS_File, val: PHYSFS_uint32) c_int;
pub extern fn PHYSFS_writeSBE32(file: [*c]PHYSFS_File, val: PHYSFS_sint32) c_int;
pub extern fn PHYSFS_writeUBE32(file: [*c]PHYSFS_File, val: PHYSFS_uint32) c_int;
pub extern fn PHYSFS_writeSLE64(file: [*c]PHYSFS_File, val: PHYSFS_sint64) c_int;
pub extern fn PHYSFS_writeULE64(file: [*c]PHYSFS_File, val: PHYSFS_uint64) c_int;
pub extern fn PHYSFS_writeSBE64(file: [*c]PHYSFS_File, val: PHYSFS_sint64) c_int;
pub extern fn PHYSFS_writeUBE64(file: [*c]PHYSFS_File, val: PHYSFS_uint64) c_int;
pub extern fn PHYSFS_isInit() c_int;
pub extern fn PHYSFS_symbolicLinksPermitted() c_int;
pub const struct_PHYSFS_Allocator = extern struct {
    Init: ?*const fn () callconv(.c) c_int = @import("std").mem.zeroes(?*const fn () callconv(.c) c_int),
    Deinit: ?*const fn () callconv(.c) void = @import("std").mem.zeroes(?*const fn () callconv(.c) void),
    Malloc: ?*const fn (PHYSFS_uint64) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (PHYSFS_uint64) callconv(.c) ?*anyopaque),
    Realloc: ?*const fn (?*anyopaque, PHYSFS_uint64) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (?*anyopaque, PHYSFS_uint64) callconv(.c) ?*anyopaque),
    Free: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const PHYSFS_Allocator = struct_PHYSFS_Allocator;
pub extern fn PHYSFS_setAllocator(allocator: [*c]const PHYSFS_Allocator) c_int;
pub extern fn PHYSFS_mount(newDir: [*c]const u8, mountPoint: [*c]const u8, appendToPath: c_int) c_int;
pub extern fn PHYSFS_getMountPoint(dir: [*c]const u8) [*c]const u8;
pub const PHYSFS_StringCallback = ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) void;
pub const PHYSFS_EnumFilesCallback = ?*const fn (?*anyopaque, [*c]const u8, [*c]const u8) callconv(.c) void;
pub extern fn PHYSFS_getCdRomDirsCallback(c: PHYSFS_StringCallback, d: ?*anyopaque) void;
pub extern fn PHYSFS_getSearchPathCallback(c: PHYSFS_StringCallback, d: ?*anyopaque) void;
pub extern fn PHYSFS_enumerateFilesCallback(dir: [*c]const u8, c: PHYSFS_EnumFilesCallback, d: ?*anyopaque) void;
pub extern fn PHYSFS_utf8FromUcs4(src: [*c]const PHYSFS_uint32, dst: [*c]u8, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_utf8ToUcs4(src: [*c]const u8, dst: [*c]PHYSFS_uint32, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_utf8FromUcs2(src: [*c]const PHYSFS_uint16, dst: [*c]u8, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_utf8ToUcs2(src: [*c]const u8, dst: [*c]PHYSFS_uint16, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_utf8FromLatin1(src: [*c]const u8, dst: [*c]u8, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_caseFold(from: PHYSFS_uint32, to: [*c]PHYSFS_uint32) c_int;
pub extern fn PHYSFS_utf8stricmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn PHYSFS_utf16stricmp(str1: [*c]const PHYSFS_uint16, str2: [*c]const PHYSFS_uint16) c_int;
pub extern fn PHYSFS_ucs4stricmp(str1: [*c]const PHYSFS_uint32, str2: [*c]const PHYSFS_uint32) c_int;
pub const PHYSFS_ENUM_ERROR: c_int = -1;
pub const PHYSFS_ENUM_STOP: c_int = 0;
pub const PHYSFS_ENUM_OK: c_int = 1;
pub const enum_PHYSFS_EnumerateCallbackResult = c_int;
pub const PHYSFS_EnumerateCallbackResult = enum_PHYSFS_EnumerateCallbackResult;
pub const PHYSFS_EnumerateCallback = ?*const fn (?*anyopaque, [*c]const u8, [*c]const u8) callconv(.c) PHYSFS_EnumerateCallbackResult;
pub extern fn PHYSFS_enumerate(dir: [*c]const u8, c: PHYSFS_EnumerateCallback, d: ?*anyopaque) c_int;
pub extern fn PHYSFS_unmount(oldDir: [*c]const u8) c_int;
pub extern fn PHYSFS_getAllocator() [*c]const PHYSFS_Allocator;
pub const PHYSFS_FILETYPE_REGULAR: c_int = 0;
pub const PHYSFS_FILETYPE_DIRECTORY: c_int = 1;
pub const PHYSFS_FILETYPE_SYMLINK: c_int = 2;
pub const PHYSFS_FILETYPE_OTHER: c_int = 3;
pub const enum_PHYSFS_FileType = c_uint;
pub const PHYSFS_FileType = enum_PHYSFS_FileType;
pub const struct_PHYSFS_Stat = extern struct {
    filesize: PHYSFS_sint64 = @import("std").mem.zeroes(PHYSFS_sint64),
    modtime: PHYSFS_sint64 = @import("std").mem.zeroes(PHYSFS_sint64),
    createtime: PHYSFS_sint64 = @import("std").mem.zeroes(PHYSFS_sint64),
    accesstime: PHYSFS_sint64 = @import("std").mem.zeroes(PHYSFS_sint64),
    filetype: PHYSFS_FileType = @import("std").mem.zeroes(PHYSFS_FileType),
    readonly: c_int = @import("std").mem.zeroes(c_int),
};
pub const PHYSFS_Stat = struct_PHYSFS_Stat;
pub extern fn PHYSFS_stat(fname: [*c]const u8, stat: [*c]PHYSFS_Stat) c_int;
pub extern fn PHYSFS_utf8FromUtf16(src: [*c]const PHYSFS_uint16, dst: [*c]u8, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_utf8ToUtf16(src: [*c]const u8, dst: [*c]PHYSFS_uint16, len: PHYSFS_uint64) void;
pub extern fn PHYSFS_readBytes(handle: [*c]PHYSFS_File, buffer: ?*anyopaque, len: PHYSFS_uint64) PHYSFS_sint64;
pub extern fn PHYSFS_writeBytes(handle: [*c]PHYSFS_File, buffer: ?*const anyopaque, len: PHYSFS_uint64) PHYSFS_sint64;
pub const struct_PHYSFS_Io = extern struct {
    version: PHYSFS_uint32 = @import("std").mem.zeroes(PHYSFS_uint32),
    @"opaque": ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    read: ?*const fn ([*c]struct_PHYSFS_Io, ?*anyopaque, PHYSFS_uint64) callconv(.c) PHYSFS_sint64 = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io, ?*anyopaque, PHYSFS_uint64) callconv(.c) PHYSFS_sint64),
    write: ?*const fn ([*c]struct_PHYSFS_Io, ?*const anyopaque, PHYSFS_uint64) callconv(.c) PHYSFS_sint64 = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io, ?*const anyopaque, PHYSFS_uint64) callconv(.c) PHYSFS_sint64),
    seek: ?*const fn ([*c]struct_PHYSFS_Io, PHYSFS_uint64) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io, PHYSFS_uint64) callconv(.c) c_int),
    tell: ?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) PHYSFS_sint64 = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) PHYSFS_sint64),
    length: ?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) PHYSFS_sint64 = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) PHYSFS_sint64),
    duplicate: ?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) [*c]struct_PHYSFS_Io = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) [*c]struct_PHYSFS_Io),
    flush: ?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) c_int),
    destroy: ?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]struct_PHYSFS_Io) callconv(.c) void),
};
pub const PHYSFS_Io = struct_PHYSFS_Io;
pub extern fn PHYSFS_mountIo(io: [*c]PHYSFS_Io, newDir: [*c]const u8, mountPoint: [*c]const u8, appendToPath: c_int) c_int;
pub extern fn PHYSFS_mountMemory(buf: ?*const anyopaque, len: PHYSFS_uint64, del: ?*const fn (?*anyopaque) callconv(.c) void, newDir: [*c]const u8, mountPoint: [*c]const u8, appendToPath: c_int) c_int;
pub extern fn PHYSFS_mountHandle(file: [*c]PHYSFS_File, newDir: [*c]const u8, mountPoint: [*c]const u8, appendToPath: c_int) c_int;
pub const PHYSFS_ERR_OK: c_int = 0;
pub const PHYSFS_ERR_OTHER_ERROR: c_int = 1;
pub const PHYSFS_ERR_OUT_OF_MEMORY: c_int = 2;
pub const PHYSFS_ERR_NOT_INITIALIZED: c_int = 3;
pub const PHYSFS_ERR_IS_INITIALIZED: c_int = 4;
pub const PHYSFS_ERR_ARGV0_IS_NULL: c_int = 5;
pub const PHYSFS_ERR_UNSUPPORTED: c_int = 6;
pub const PHYSFS_ERR_PAST_EOF: c_int = 7;
pub const PHYSFS_ERR_FILES_STILL_OPEN: c_int = 8;
pub const PHYSFS_ERR_INVALID_ARGUMENT: c_int = 9;
pub const PHYSFS_ERR_NOT_MOUNTED: c_int = 10;
pub const PHYSFS_ERR_NOT_FOUND: c_int = 11;
pub const PHYSFS_ERR_SYMLINK_FORBIDDEN: c_int = 12;
pub const PHYSFS_ERR_NO_WRITE_DIR: c_int = 13;
pub const PHYSFS_ERR_OPEN_FOR_READING: c_int = 14;
pub const PHYSFS_ERR_OPEN_FOR_WRITING: c_int = 15;
pub const PHYSFS_ERR_NOT_A_FILE: c_int = 16;
pub const PHYSFS_ERR_READ_ONLY: c_int = 17;
pub const PHYSFS_ERR_CORRUPT: c_int = 18;
pub const PHYSFS_ERR_SYMLINK_LOOP: c_int = 19;
pub const PHYSFS_ERR_IO: c_int = 20;
pub const PHYSFS_ERR_PERMISSION: c_int = 21;
pub const PHYSFS_ERR_NO_SPACE: c_int = 22;
pub const PHYSFS_ERR_BAD_FILENAME: c_int = 23;
pub const PHYSFS_ERR_BUSY: c_int = 24;
pub const PHYSFS_ERR_DIR_NOT_EMPTY: c_int = 25;
pub const PHYSFS_ERR_OS_ERROR: c_int = 26;
pub const PHYSFS_ERR_DUPLICATE: c_int = 27;
pub const PHYSFS_ERR_BAD_PASSWORD: c_int = 28;
pub const PHYSFS_ERR_APP_CALLBACK: c_int = 29;
pub const enum_PHYSFS_ErrorCode = c_uint;
pub const PHYSFS_ErrorCode = enum_PHYSFS_ErrorCode;
pub extern fn PHYSFS_getLastErrorCode() PHYSFS_ErrorCode;
pub extern fn PHYSFS_getErrorByCode(code: PHYSFS_ErrorCode) [*c]const u8;
pub extern fn PHYSFS_setErrorCode(code: PHYSFS_ErrorCode) void;
pub extern fn PHYSFS_getPrefDir(org: [*c]const u8, app: [*c]const u8) [*c]const u8;
pub const struct_PHYSFS_Archiver = extern struct {
    version: PHYSFS_uint32 = @import("std").mem.zeroes(PHYSFS_uint32),
    info: PHYSFS_ArchiveInfo = @import("std").mem.zeroes(PHYSFS_ArchiveInfo),
    openArchive: ?*const fn ([*c]PHYSFS_Io, [*c]const u8, c_int, [*c]c_int) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]PHYSFS_Io, [*c]const u8, c_int, [*c]c_int) callconv(.c) ?*anyopaque),
    enumerate: ?*const fn (?*anyopaque, [*c]const u8, PHYSFS_EnumerateCallback, [*c]const u8, ?*anyopaque) callconv(.c) PHYSFS_EnumerateCallbackResult = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8, PHYSFS_EnumerateCallback, [*c]const u8, ?*anyopaque) callconv(.c) PHYSFS_EnumerateCallbackResult),
    openRead: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) [*c]PHYSFS_Io = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8) callconv(.c) [*c]PHYSFS_Io),
    openWrite: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) [*c]PHYSFS_Io = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8) callconv(.c) [*c]PHYSFS_Io),
    openAppend: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) [*c]PHYSFS_Io = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8) callconv(.c) [*c]PHYSFS_Io),
    remove: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8) callconv(.c) c_int),
    mkdir: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8) callconv(.c) c_int),
    stat: ?*const fn (?*anyopaque, [*c]const u8, [*c]PHYSFS_Stat) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8, [*c]PHYSFS_Stat) callconv(.c) c_int),
    closeArchive: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const PHYSFS_Archiver = struct_PHYSFS_Archiver;
pub extern fn PHYSFS_registerArchiver(archiver: [*c]const PHYSFS_Archiver) c_int;
pub extern fn PHYSFS_deregisterArchiver(ext: [*c]const u8) c_int;
pub extern fn PHYSFS_setRoot(archive: [*c]const u8, subdir: [*c]const u8) c_int;
pub const PHYSFS_DECL = @compileError("unable to translate macro: undefined identifier `visibility`");
// deps/physfs-3.2.0/src/physfs.h:235:9
pub const PHYSFS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// deps/physfs-3.2.0/src/physfs.h:243:9
pub const PHYSFS_COMPILE_TIME_ASSERT = @compileError("unable to translate macro: undefined identifier `PHYSFS_compile_time_assert_`");
// deps/physfs-3.2.0/src/physfs.h:325:9
pub const PHYSFS_file = PHYSFS_File;
pub const PHYSFS_VER_MAJOR = @as(c_int, 3);
pub const PHYSFS_VER_MINOR = @as(c_int, 2);
pub const PHYSFS_VER_PATCH = @as(c_int, 0);
pub const PHYSFS_VERSION = @compileError("unable to translate C expr: unexpected token '{'");
// deps/physfs-3.2.0/src/physfs.h:461:9
