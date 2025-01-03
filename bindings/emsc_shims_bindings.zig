pub extern fn emsc_init(canvas_name: [*c]const u8, flags: c_int) void;
pub extern fn emsc_width() c_int;
pub extern fn emsc_height() c_int;
pub extern fn emsc_webgl_fallback() c_int;
pub extern fn emsc_run_js(js: [*c]const u8) void;

pub const EMSC_NONE: c_int = 0;
pub const EMSC_TRY_WEBGL2: c_int = (1 << 0);
pub const EMSC_ANTIALIAS: c_int = (1 << 1);

// emscripten direct
pub const em_callback_func = ?*const fn () callconv(.c) void;
pub extern fn emscripten_set_main_loop(func: em_callback_func, fps: c_int, simulate_infinite_loop: bool) void;
pub extern fn emscripten_get_window_title() [*c]u8;
pub extern fn emscripten_set_window_title([*c]const u8) void;
