const std = @import("std");
const builtin = @import("builtin");

const ryte = @import("ryte");

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
var shader: ryte.Shader = undefined;
var time: f32 = 0.0;

fn print_path() !void {
    if (builtin.os.tag != .emscripten) {
        var cwd_buf: [std.fs.max_path_bytes]u8 = undefined;
        const cwd = try std.fs.cwd().realpath(".", &cwd_buf);
        std.debug.print("CWD: {s}\n", .{cwd});
    }
}

fn createBasicShader() !ryte.Shader {
    const vert_code =
        \\// draw rect sends x, y positions and w/h, 4 floats
        \\in vec4 coords;
        \\out vec2 image_uv;
        \\void vert_main() {
        \\    gl_Position = vec4(coords.xy, 0.0, 1.0);
        \\    image_uv = coords.zw;
        \\}
    ;

    const frag_code =
        \\// ported from a Love2D shader called
        \\// "spinning_plus"
        \\#define PI 3.14159265359
        \\mat2 rotate2d(float _angle) {
        \\    return mat2(cos(_angle),-sin(_angle), sin(_angle),cos(_angle));
        \\}
        \\float box(in vec2 _st, in vec2 _size) {
        \\    _size = vec2(0.5) - _size*0.5;
        \\    vec2 uv = smoothstep(_size, _size+vec2(0.001), _st);
        \\    uv *= smoothstep(_size, _size+vec2(0.001), vec2(1.0)-_st);
        \\    return uv.x*uv.y;
        \\}
        \\float xcross(in vec2 _st, float _size) {
        \\    return  box(_st, vec2(_size,_size/4.)) + box(_st, vec2(_size/4.,_size));
        \\}
        \\in vec2 image_uv;
        \\out vec4 frag_color;
        \\void frag_main() {
        \\    vec2 st = gl_FragCoord.xy/screen_size.xy;
        \\    vec3 color2 = vec3(0.0);
        \\    // move space from the center to the vec2(0.0)
        \\    st -= vec2(0.5);
        \\    // rotate the space
        \\    st = rotate2d( sin(time)*PI ) * st;
        \\    // move it back to the original place
        \\    st += vec2(0.5);
        \\    // Show the coordinates of the space on the background
        \\    color2 = vec3(st.x,st.y,0.0);
        \\    // Add the shape on the foreground
        \\    color2 += vec3(xcross(st,0.4));
        \\    frag_color = vec4(color2, 1.0);
        // \\    frag_color = vec4(time,1,0,0.5);
        \\}
    ;

    var builder = try ryte.newShaderBuilder(allocator);
    // defer builder.uniform_definitions.deinit();

    try ryte.shaderBuilderUniform(&builder, "screen_size", .Vec2);
    try ryte.shaderBuilderUniform(&builder, "time", .Float);
    ryte.shaderBuilderVertex(&builder, vert_code);
    ryte.shaderBuilderFragment(&builder, frag_code);

    const basicShader = try ryte.shaderBuilderBuild(&builder, allocator);
    return basicShader;
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
    const xscale = ts.xscale;
    const yscale = ts.yscale;

    angle += @as(f32, @floatCast(ts.delta_time)) * 0.2;
    time += @as(f32, @floatCast(ts.delta_time));

    if (ryte.mousePressed(ryte.MouseButton.mb1)) {
        if (ryte.isMusicPlaying(mus)) {
            ryte.stopMusic(mus);
        } else {
            ryte.playMusic(mus) catch {};
        }
    }

    if (ryte.keyDown(.f7)) {
        std.debug.print("res: {} x {}, time: {}\n", .{ w, h, time });
    }

    if (ryte.keyDown(.f4)) {
        ryte.quit();
    }

    ryte.setColor(0, 0, 0, 1);
    ryte.cls();

    ryte.setShader(&shader);
    ryte.setShaderUniform(
        &shader,
        "screen_size",
        .{ .vec2 = .{
            .data = .{ w * xscale, h * yscale },
            .count = 2,
        } },
    ) catch {};
    ryte.setShaderUniform(
        &shader,
        "time",
        .{ .float = time },
    ) catch {};
    ryte.drawRect(0, 0, w, h);
    // ryte.drawImage(cvs, 100, 100);
    ryte.resetShader();

    // ryte.rotate(0.4);
    // Update shader uniforms

    ryte.resetMatrix();

    ryte.setColor(0.4, 0.4, 0, 0.5);
    ryte.drawImage(cvs, 100, 100);

    ryte.setColor(1, 1, 1, 1);

    ryte.setCurrentFont(font2);
    ryte.setColor(0, 1, 1, 0.4);
    ryte.drawText("lyte2d in zig", 10, 50) catch {};
    ryte.drawImage(img, 100, 100);

    ryte.setColor(1, 1, 0, 0.4);

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
    defer ryte.deinitAudio();

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

    // Initialize shader
    shader = try createBasicShader();
    // defer ryte.cleanupShader(&shader, allocator);

    // Set tick function and start main loop
    ryte.setTickFn(tickFn_loading, null);
    ryte.startMainLoop();

    std.debug.print("good bye: ryte example.\n", .{});
}

test "api testing" {
    //
}
