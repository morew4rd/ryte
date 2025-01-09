const std = @import("std");
const builtin = @import("builtin");
const physfs = @import("physfs");
const raudio = @import("raudio");

const sgp = @import("sokol_gp");

const window = @import("window.zig");
const input = @import("input.zig");
const image = @import("image.zig");
const canvas = @import("canvas.zig");
const font = @import("font.zig");
const fs = @import("fs.zig");

// Global allocator
// var gpa = std.heap.GeneralPurposeAllocator(.{}){};
// pub const allocator = gpa.allocator();
pub const allocator = std.heap.c_allocator;

var angle: f32 = 0.3;

var cvs: image.Image = undefined;

var font2: *font.Font = undefined;

var files_blob: *fs.Blob = undefined;

var img: image.Image = undefined;

fn print_path() !void {
    if (builtin.os.tag != .emscripten) {
        var cwd_buf: [std.fs.max_path_bytes]u8 = undefined;
        const cwd = try std.fs.cwd().realpath(".", &cwd_buf);
        std.debug.print("CWD: {s}\n", .{cwd});
    }
}

pub fn main() !void {
    std.debug.print("hello: ryte example.\n", .{});

    // Initialize window and graphics
    try window.init();
    defer window.deinit();

    // Initialize fs
    try fs.init(allocator);
    defer fs.deinit();
    try fs.mountAddReadablePath(".", "/");
    try fs.mountSetWritablePath(".");

    // Fetch the file
    files_blob = try fs.fetchFileAsync("assets/files.zip", "files", 1_000_000);
    defer {
        // Only remove if the blob is still valid
        if (files_blob.status != .failed and files_blob.buffer.len > 0) {
            fs.removeBlob(files_blob);
        }
    }

    // Initialize audio
    raudio.InitAudioDevice();
    if (!raudio.IsAudioDeviceReady()) {
        return error.RaudioInitFailed;
    }

    try input.initInputCallbacks(window.main_window.window);

    cvs = try canvas.newCanvas(200, 200);
    defer canvas.removeCanvas(cvs);

    img = try image.loadImageFromFile("assets/skepjak.jpg");
    defer image.removeImage(img);

    const blob_font2 = try fs.loadFile("assets/DroidSansMono.ttf");
    defer fs.removeBlob(blob_font2);
    font2 = try font.makeFontFromData(allocator, blob_font2.buffer, blob_font2.name, 32);
    defer font.destroyFont(font2);

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

    std.debug.print("hello: ryte example.\n", .{});
}

fn checkFetches() void {
    fs.updateFetchTasks();
}

fn tickFn(ts: window.TickState) void {
    _ = ts;
    checkFetches();
    if (files_blob.status == .ready) {
        if (input.mouseDown(input.MouseButton.mb1)) {
            angle += 0.1;
        }
        sgp.sgp_set_color(0, 0, 0, 1);
        sgp.sgp_clear();

        sgp.sgp_rotate(angle);

        // Draw the loaded image

        sgp.sgp_set_color(1, 1, 0, 0.5);
        sgp.sgp_draw_filled_rect(20, 20, 300, 300);

        sgp.sgp_reset_transform();
        sgp.sgp_reset_color();
        sgp.sgp_set_image(0, @bitCast(cvs._image_handle));
        sgp.sgp_draw_textured_rect(0, .{ .x = 0, .y = 0, .h = 200, .w = 200 }, .{ .x = 0, .y = 0, .h = 200, .w = 200 });

        sgp.sgp_set_color(1, 1, 1, 1);

        font.setCurrentFont(font2);
        font.drawText("lyte2d in zig", 10, 50) catch {};
        image.drawImage(img, 100, 100);
    }
}
