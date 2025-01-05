pub const SFETCH_LOGITEM_OK: c_int = 0;
pub const SFETCH_LOGITEM_MALLOC_FAILED: c_int = 1;
pub const SFETCH_LOGITEM_FILE_PATH_UTF8_DECODING_FAILED: c_int = 2;
pub const SFETCH_LOGITEM_SEND_QUEUE_FULL: c_int = 3;
pub const SFETCH_LOGITEM_REQUEST_CHANNEL_INDEX_TOO_BIG: c_int = 4;
pub const SFETCH_LOGITEM_REQUEST_PATH_IS_NULL: c_int = 5;
pub const SFETCH_LOGITEM_REQUEST_PATH_TOO_LONG: c_int = 6;
pub const SFETCH_LOGITEM_REQUEST_CALLBACK_MISSING: c_int = 7;
pub const SFETCH_LOGITEM_REQUEST_CHUNK_SIZE_GREATER_BUFFER_SIZE: c_int = 8;
pub const SFETCH_LOGITEM_REQUEST_USERDATA_PTR_IS_SET_BUT_USERDATA_SIZE_IS_NULL: c_int = 9;
pub const SFETCH_LOGITEM_REQUEST_USERDATA_PTR_IS_NULL_BUT_USERDATA_SIZE_IS_NOT: c_int = 10;
pub const SFETCH_LOGITEM_REQUEST_USERDATA_SIZE_TOO_BIG: c_int = 11;
pub const SFETCH_LOGITEM_CLAMPING_NUM_CHANNELS_TO_MAX_CHANNELS: c_int = 12;
pub const SFETCH_LOGITEM_REQUEST_POOL_EXHAUSTED: c_int = 13;
pub const enum_sfetch_log_item_t = c_uint;
pub const sfetch_log_item_t = enum_sfetch_log_item_t;
pub const struct_sfetch_logger_t = extern struct {
    func: ?*const fn ([*c]const u8, u32, u32, [*c]const u8, u32, [*c]const u8, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const u8, u32, u32, [*c]const u8, u32, [*c]const u8, ?*anyopaque) callconv(.c) void),
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const sfetch_logger_t = struct_sfetch_logger_t;
pub const struct_sfetch_range_t = extern struct {
    ptr: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    size: usize = @import("std").mem.zeroes(usize),
};
pub const sfetch_range_t = struct_sfetch_range_t;
pub const struct_sfetch_allocator_t = extern struct {
    alloc_fn: ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque),
    free_fn: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void),
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const sfetch_allocator_t = struct_sfetch_allocator_t;
pub const struct_sfetch_desc_t = extern struct {
    max_requests: u32 = @import("std").mem.zeroes(u32),
    num_channels: u32 = @import("std").mem.zeroes(u32),
    num_lanes: u32 = @import("std").mem.zeroes(u32),
    allocator: sfetch_allocator_t = @import("std").mem.zeroes(sfetch_allocator_t),
    logger: sfetch_logger_t = @import("std").mem.zeroes(sfetch_logger_t),
};
pub const sfetch_desc_t = struct_sfetch_desc_t;
pub const struct_sfetch_handle_t = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sfetch_handle_t = struct_sfetch_handle_t;
pub const SFETCH_ERROR_NO_ERROR: c_int = 0;
pub const SFETCH_ERROR_FILE_NOT_FOUND: c_int = 1;
pub const SFETCH_ERROR_NO_BUFFER: c_int = 2;
pub const SFETCH_ERROR_BUFFER_TOO_SMALL: c_int = 3;
pub const SFETCH_ERROR_UNEXPECTED_EOF: c_int = 4;
pub const SFETCH_ERROR_INVALID_HTTP_STATUS: c_int = 5;
pub const SFETCH_ERROR_CANCELLED: c_int = 6;
pub const enum_sfetch_error_t = c_uint;
pub const sfetch_error_t = enum_sfetch_error_t;
pub const struct_sfetch_response_t = extern struct {
    handle: sfetch_handle_t = @import("std").mem.zeroes(sfetch_handle_t),
    dispatched: bool = @import("std").mem.zeroes(bool),
    fetched: bool = @import("std").mem.zeroes(bool),
    paused: bool = @import("std").mem.zeroes(bool),
    finished: bool = @import("std").mem.zeroes(bool),
    failed: bool = @import("std").mem.zeroes(bool),
    cancelled: bool = @import("std").mem.zeroes(bool),
    error_code: sfetch_error_t = @import("std").mem.zeroes(sfetch_error_t),
    channel: u32 = @import("std").mem.zeroes(u32),
    lane: u32 = @import("std").mem.zeroes(u32),
    path: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    data_offset: u32 = @import("std").mem.zeroes(u32),
    data: sfetch_range_t = @import("std").mem.zeroes(sfetch_range_t),
    buffer: sfetch_range_t = @import("std").mem.zeroes(sfetch_range_t),
};
pub const sfetch_response_t = struct_sfetch_response_t;
pub const struct_sfetch_request_t = extern struct {
    channel: u32 = @import("std").mem.zeroes(u32),
    path: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    callback: ?*const fn ([*c]const sfetch_response_t) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sfetch_response_t) callconv(.c) void),
    chunk_size: u32 = @import("std").mem.zeroes(u32),
    buffer: sfetch_range_t = @import("std").mem.zeroes(sfetch_range_t),
    user_data: sfetch_range_t = @import("std").mem.zeroes(sfetch_range_t),
};
pub const sfetch_request_t = struct_sfetch_request_t;
pub extern fn sfetch_setup(desc: [*c]const sfetch_desc_t) void;
pub extern fn sfetch_shutdown() void;
pub extern fn sfetch_valid() bool;
pub extern fn sfetch_desc() sfetch_desc_t;
pub extern fn sfetch_max_userdata_bytes() c_int;
pub extern fn sfetch_max_path() c_int;
pub extern fn sfetch_send(request: [*c]const sfetch_request_t) sfetch_handle_t;
pub extern fn sfetch_handle_valid(h: sfetch_handle_t) bool;
pub extern fn sfetch_dowork() void;
pub extern fn sfetch_bind_buffer(h: sfetch_handle_t, buffer: sfetch_range_t) void;
pub extern fn sfetch_unbind_buffer(h: sfetch_handle_t) ?*anyopaque;
pub extern fn sfetch_cancel(h: sfetch_handle_t) void;
pub extern fn sfetch_pause(h: sfetch_handle_t) void;
pub extern fn sfetch_continue(h: sfetch_handle_t) void;

pub inline fn SFETCH_RANGE(x: anytype) sfetch_range_t {
    _ = &x;
    return @import("std").mem.zeroInit(sfetch_range_t, .{ &x, @import("std").zig.c_translation.sizeof(x) });
}
