const std = @import("std");
const builtin = @import("builtin");
const physfs = @import("physfs");
const raudio = @import("raudio");

const sgp = @import("sokol_gp");

const window = @import("window.zig");
const input = @import("input.zig");

var angle: f32 = 0.0;

pub fn main() !void {
    std.debug.print("ryte example.\n", .{});

    // Initialize window and graphics
    try window.init();
    defer window.deinit();

    // Initialize PHYSFS
    _ = physfs.PHYSFS_init("");

    // Initialize audio
    raudio.InitAudioDevice();
    if (!raudio.IsAudioDeviceReady()) {
        return error.RaudioInitFailed;
    }

    try input.initInputCallbacks(window.main_window.window);

    // Set tick function and start main loop
    window.setTickFn(tickFn, null);
    window.startMainLoop();
}

fn tickFn(ts: window.TickState) void {
    _ = ts;

    if (input.mouseDown(input.MouseButton.mb1)) {
        angle += 0.1;
    }

    sgp.sgp_rotate(angle);

    sgp.sgp_set_color(1, 1, 0, 1);
    sgp.sgp_draw_filled_rect(20, 20, 300, 300);
}
