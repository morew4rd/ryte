const std = @import("std");
const builtin = @import("builtin");

// native dependencies
const glfw = @import("glfw");
const physfs = @import("physfs");
const raudio = @import("raudio");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");

// window
const W = 800;
const H = 600;
const initial_title = "ryte -- lyte2d in zig";

pub fn main() !void {
    std.debug.print("ryte example.\n", .{});

    if (glfw.glfwInit() == 0) {
        return error.GlfwInitFailed;
    }
    defer glfw.glfwTerminate();

    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR, 3);
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_FORWARD_COMPAT, glfw.GLFW_TRUE);
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE, glfw.GLFW_OPENGL_CORE_PROFILE);
    glfw.glfwWindowHint(glfw.GLFW_DOUBLEBUFFER, 1);

    _ = physfs.PHYSFS_init("");
    defer _ = physfs.PHYSFS_deinit();

    raudio.InitAudioDevice();
    if (!raudio.IsAudioDeviceReady()) {
        return error.RaudioInitFailed;
    }
    defer raudio.CloseAudioDevice();

    const win = glfw.glfwCreateWindow(W, H, initial_title, null, null);
    if (win == null) {
        return error.CouldntOpenWindow;
    }
    glfw.glfwMakeContextCurrent(win);

    var sgdesc: sg.sg_desc = .{};
    sg.sg_setup(&sgdesc);
    defer sg.sg_shutdown();
    if (!sg.sg_isvalid()) {
        return error.SG_IsInvalid;
    }
    var sgpdesc: sgp.sgp_desc = .{};
    sgp.sgp_setup(&sgpdesc);
    defer sgp.sgp_shutdown();
    if (!sg.sg_isvalid()) {
        return error.SGP_IsInvalid;
    }

    // Conditional compilation for different platforms
    if (builtin.target.os.tag == .emscripten) {
        // Emscripten-specific loop
        const emscripten = @import("emscripten");
        emscripten.emscripten_set_main_loop(emscriptenMainLoop, 0, true);
    } else {
        // Desktop-specific loop
        while (glfw.glfwWindowShouldClose(win) == 0) {
            mainLoop(win);
            glfw.glfwPollEvents();
        }
    }
}

var angle: f32 = 0.7;

fn mainLoop(win: ?*glfw.GLFWwindow) void {
    var fb_width: c_int = undefined;
    var fb_height: c_int = undefined;
    glfw.glfwGetFramebufferSize(win, &fb_width, &fb_height);

    var win_width: c_int = undefined;
    var win_height: c_int = undefined;
    glfw.glfwGetWindowSize(win, &win_width, &win_height);

    const scale_x = @as(f32, @floatFromInt(fb_width)) / @as(f32, @floatFromInt(win_width));
    const scale_y = @as(f32, @floatFromInt(fb_height)) / @as(f32, @floatFromInt(win_height));

    var pass: sg.sg_pass = .{};
    sgp.sgp_begin(@intCast(fb_width), @intCast(fb_height));
    sgp.sgp_reset_transform();
    sgp.sgp_translate(150 * scale_x, 150 * scale_y);
    // sgp.sgp_rotate(angle);
    // angle += 0.01;

    sgp.sgp_set_color(1, 1, 0, 1);
    sgp.sgp_draw_filled_rect(20, 20, 300 * scale_x, 300 * scale_y);

    pass.swapchain.width = @intCast(fb_width);
    pass.swapchain.height = @intCast(fb_height);

    sg.sg_begin_pass(&pass);
    sgp.sgp_flush();
    sgp.sgp_end();
    sg.sg_end_pass();
    sg.sg_commit();

    glfw.glfwSwapBuffers(win);
}

fn emscriptenMainLoop() callconv(.c) void {
    const win = glfw.glfwGetCurrentContext();
    mainLoop(win);
}
