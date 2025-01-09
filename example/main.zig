const std = @import("std");
const builtin = @import("builtin");

const window = @import("window.zig");
const input = @import("input.zig");
const audio = @import("audio.zig");
const image = @import("image.zig");
const canvas = @import("canvas.zig");
const font = @import("font.zig");
const fs = @import("fs.zig");
const shapes = @import("shapes.zig");

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

fn checkFetches() void {
    fs.updateFetchTasks();
}

fn tickFn_loading(ts: window.TickState) void {
    _ = ts;
    checkFetches();
    if (files_blob.status == .ready) {
        fs.mountAddReadablePathBlobZip(files_blob, "") catch {
            std.debug.print("ZIP failed\n", .{});
            @panic("EH");
            // return;
        };

        img = image.loadImageFromFile("skepjak.jpg") catch {
            std.debug.print("image load failed\n", .{});
            return;
        };
        // defer image.removeImage(img);

        const blob_font2 = fs.loadFile("DroidSansMono.ttf") catch {
            std.debug.print("font blob load failed\n", .{});
            return;
        };
        // defer fs.removeBlob(blob_font2);
        font2 = font.makeFontFromData(allocator, blob_font2.buffer, blob_font2.name, 32) catch {
            std.debug.print("font failed\n", .{});
            return;
        };

        window.setTickFn(tickFn_running, null);
    }
}

fn tickFn_running(ts: window.TickState) void {
    _ = ts;

    if (input.mouseDown(input.MouseButton.mb1)) {
        angle += 0.1;
    }

    if (input.keyDown(.f4)) {
        window.quit();
    }

    window.setColor(0, 0, 0, 1);
    window.cls();

    window.rotate(angle);

    // Draw the loaded image
    window.setColor(1, 1, 0, 0.5);
    shapes.drawRect(20, 20, 300, 300);

    window.resetMatrix();
    window.resetColor();
    image.drawImage(cvs, 100, 100);

    window.setColor(1, 1, 1, 1);

    font.setCurrentFont(font2);
    font.drawText("lyte2d in zig", 10, 50) catch {};
    image.drawImage(img, 100, 100);

    window.setColor(1, 0, 0, 0.4);
    shapes.drawCircle(150, 150, 50);
    shapes.drawEllipse(100, 250, 80, 220);
    shapes.drawTriangle(400, 10, 500, 230, 300, 400);
    shapes.drawArc(500, 400, 180, 0.2, 2.9);
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
        if (files_blob.status != .failed and files_blob.buffer.len > 0) {
            fs.removeBlob(files_blob);
        }
    }

    // Initialize audio
    try audio.init();
    defer audio.deinit();

    try input.initInputCallbacks(window.main_window.window);

    cvs = try canvas.newCanvas(200, 200);
    defer canvas.removeCanvas(cvs);

    window.setBlendMode(.blend);

    try canvas.setCanvas(cvs);
    window.setColor(0, 0, 0, 0);
    window.cls();
    window.setColor(0, 1, 0, 0.5);
    shapes.drawRect(20, 20, 180, 140);
    canvas.resetCanvas();

    // Set tick function and start main loop
    window.setTickFn(tickFn_loading, null);
    window.startMainLoop();

    std.debug.print("good bye: ryte example.\n", .{});
}

test "api testing" {
    //
}
