const std = @import("std");
const builtin = @import("builtin");

const ryte = @import("ryte.zig");

// Global allocator
// var gpa = std.heap.GeneralPurposeAllocator(.{}){};
// pub const allocator = gpa.allocator();
pub const allocator = std.heap.c_allocator;

var angle: f32 = 0.3;

var cvs: ryte.Image = undefined;

var font2: *ryte.Font = undefined;

var files_blob: *ryte.Blob = undefined;

var img: ryte.Image = undefined;
var mus: *ryte.Music = undefined;

fn print_path() !void {
    if (builtin.os.tag != .emscripten) {
        var cwd_buf: [std.fs.max_path_bytes]u8 = undefined;
        const cwd = try std.fs.cwd().realpath(".", &cwd_buf);
        std.debug.print("CWD: {s}\n", .{cwd});
    }
}

fn checkFetches() void {
    ryte.updateFetchTasks();
}

fn tickFn_loading(ts: ryte.TickState) void {
    _ = ts;
    checkFetches();
    if (files_blob.status == .ready) {
        ryte.mountAddReadablePathBlobZip(files_blob, "") catch {
            std.debug.print("ZIP failed\n", .{});
            @panic("EH");
            // return;
        };

        img = ryte.loadImageFromFile("skepjak.jpg") catch {
            std.debug.print("image load failed\n", .{});
            @panic("EH");
            // return;
        };
        // defer image.removeImage(img);

        const blob_font2 = ryte.loadFile("DroidSansMono.ttf") catch {
            std.debug.print("font blob load failed\n", .{});
            @panic("EH");
            // return;
        };
        // defer fs.removeBlob(blob_font2);
        font2 = ryte.makeFontFromData(allocator, blob_font2.buffer, blob_font2.name, 32) catch {
            std.debug.print("font failed\n", .{});
            @panic("EH");
            // return;
        };

        mus = ryte.loadMusic("chase.mp3", allocator) catch {
            std.debug.print("load music failed\n", .{});
            @panic("EH");
            // return;
        };

        // audio.playMusic(mus) catch {
        //     std.debug.print("play music failed\n", .{});
        //     @panic("EH");
        //     // return
        // };

        ryte.setTickFn(tickFn_running, null);
    }
}

fn tickFn_running(ts: ryte.TickState) void {
    const w: f32 = @floatFromInt(ts.width);
    const h: f32 = @floatFromInt(ts.height);

    angle += @as(f32, @floatCast(ts.delta_time)) * 0.2;

    if (ryte.mousePressed(ryte.MouseButton.mb1)) {
        if (ryte.isMusicPlaying(mus)) {
            ryte.stopMusic(mus);
        } else {
            ryte.playMusic(mus) catch {};
        }
    }

    if (ryte.keyDown(.f4)) {
        ryte.quit();
    }

    ryte.setColor(0, 0, 0, 1);
    ryte.cls();

    ryte.rotate(0.4);

    // Draw the loaded image
    ryte.setColor(1, 1, 0, 0.5);
    ryte.drawRect(20, 20, 300, 300);

    ryte.resetMatrix();
    ryte.resetColor();
    ryte.drawImage(cvs, 100, 100);

    ryte.setColor(1, 1, 1, 1);

    ryte.setCurrentFont(font2);
    ryte.drawText("lyte2d in zig", 10, 50) catch {};
    ryte.drawImage(img, 100, 100);

    ryte.setColor(1, 0, 0, 0.4);
    ryte.pushMatrix();
    ryte.rotateAt(angle, w / 2, h / 2);
    ryte.drawCircle(150, 150, 50);
    ryte.drawEllipse(100, 250, 80, 220);
    ryte.drawTriangle(400, 10, 500, 230, 300, 400);
    ryte.drawArc(500, 400, 180, 0.2, 2.9);
    ryte.popMatrix();
}

pub fn main() !void {
    std.debug.print("hello: ryte example.\n", .{});

    // Initialize window and graphics
    try ryte.initWindow();
    defer ryte.deinitWindow();

    // Initialize fs
    try ryte.initFs(allocator);
    defer ryte.deinitFs();
    try ryte.mountAddReadablePath(".", "/");
    try ryte.mountSetWritablePath(".");

    // Fetch the file
    files_blob = try ryte.fetchFileAsync("assets/files.zip", "files", 10_000_000);
    defer {
        if (files_blob.status != .failed and files_blob.buffer.len > 0) {
            ryte.removeBlob(files_blob);
        }
    }

    // Initialize audio
    try ryte.initAudio();
    defer ryte.deinit();

    try ryte.initInputCallbacks(ryte.main_window.window);

    cvs = try ryte.newCanvas(200, 200);
    defer ryte.removeCanvas(cvs);

    ryte.setBlendMode(.blend);

    try ryte.setCanvas(cvs);
    ryte.setColor(0, 0, 0, 0);
    ryte.cls();
    ryte.setColor(0, 1, 0, 0.5);
    ryte.drawRect(20, 20, 180, 140);
    ryte.resetCanvas();

    // Set tick function and start main loop
    ryte.setTickFn(tickFn_loading, null);
    ryte.startMainLoop();

    std.debug.print("good bye: ryte example.\n", .{});
}

test "api testing" {
    //
}
