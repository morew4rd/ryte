const std = @import("std");
const builtin = @import("builtin");
const physfs = @import("physfs");
const raudio = @import("raudio");

const sgp = @import("sokol_gp");

const window = @import("window.zig");
const input = @import("input.zig");
const canvas = @import("canvas.zig");

var angle: f32 = 0.0;

var cvs: *canvas.KyteImage = undefined;

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

    cvs = try canvas.newCanvas(200, 200);

    // TODO where does this go?
    sgp.sgp_set_blend_mode(sgp.SGP_BLENDMODE_BLEND);

    try canvas.setCanvas(cvs);
    sgp.sgp_set_color(0, 0, 0, 0);
    sgp.sgp_clear();
    sgp.sgp_set_color(0, 1, 0, 0.5);
    sgp.sgp_draw_filled_rect(20, 20, 180, 140);
    canvas.resetCanvas();

    // Set tick function and start main loop
    window.setTickFn(tickFn, null);
    window.startMainLoop();
}

fn tickFn(ts: window.TickState) void {
    _ = ts;

    if (input.mouseDown(input.MouseButton.mb1)) {
        angle += 0.1;
    }
    sgp.sgp_set_color(0, 0, 0, 1);
    sgp.sgp_clear();

    sgp.sgp_rotate(angle);

    sgp.sgp_set_color(1, 1, 0, 1);
    sgp.sgp_draw_filled_rect(20, 20, 300, 300);

    sgp.sgp_reset_transform();
    sgp.sgp_reset_color();
    sgp.sgp_set_image(0, @bitCast(cvs._image_handle));
    sgp.sgp_draw_textured_rect(0, .{ .x = 0, .y = 0, .h = 200, .w = 200 }, .{ .x = 0, .y = 0, .h = 200, .w = 200 });
}
