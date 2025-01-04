const std = @import("std");
const builtin = @import("builtin");
const physfs = @import("physfs");
const raudio = @import("raudio");

const sgp = @import("sokol_gp");

const window = @import("window.zig");
const input = @import("input.zig");
const canvas = @import("canvas.zig");
const font = @import("font.zig");

var angle: f32 = 0.3;

var cvs: *canvas.KyteImage = undefined;
var font1: *font.KyteFont = undefined;
var font2: *font.KyteFont = undefined;

fn print_path() !void {
    if (builtin.os.tag != .emscripten) {
        // print current working directory.
        var cwd_buf: [std.fs.max_path_bytes]u8 = undefined;
        const cwd = try std.fs.cwd().realpath(".", &cwd_buf);
        std.debug.print("CWD: {s}\n", .{cwd});
    }
}

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
    font1 = try font.loadFontFromFile(std.heap.c_allocator, "assets/m5x7.ttf", 14); // TODO: store font on the object
    font2 = try font.loadFontFromFile(std.heap.c_allocator, "assets/DroidSansMono.ttf", 32); // TODO: store font on the object
    defer font.destroyFont(std.heap.c_allocator, font1); // crash
    defer font.destroyFont(std.heap.c_allocator, font2); // crash
    font.setCurrentFont(font1);

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

    sgp.sgp_set_color(1, 1, 0, 0.5);
    sgp.sgp_draw_filled_rect(20, 20, 300, 300);

    sgp.sgp_reset_transform();
    sgp.sgp_reset_color();
    sgp.sgp_set_image(0, @bitCast(cvs._image_handle));
    sgp.sgp_draw_textured_rect(0, .{ .x = 0, .y = 0, .h = 200, .w = 200 }, .{ .x = 0, .y = 0, .h = 200, .w = 200 });

    // sgp.sgp_scale(2, 2);
    sgp.sgp_set_color(1, 1, 1, 1);
    // font.setCurrentFont(font1);
    // font.drawText("lyte2d in zig", 10, 10) catch {};
    font.setCurrentFont(font2);
    font.drawText("lyte2d in zig", 10, 50) catch {};
}
