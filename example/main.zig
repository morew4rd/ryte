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

const BlendMode = enum(u8) {
    none = 0,
    blend = 1,
    add = 2,
    mod = 3,
    mul = 4,
};

const FilterMode = enum(u8) {
    _invalid = 1,
    nearest = 2,
    linear = 3,
};

const Window = struct {
    window: *glfw.struct_GLFWwindow,
    monitor: *glfw.struct_GLFWmonitor,
    mode: *glfw.struct_GLFWvidmode,
    title: [*:0]const u8,
    fullscreen: bool,
    vsync: bool,
    window_resizable: bool,
    blendmode: BlendMode,
    filtermode: FilterMode,
    width_save: c_int,
    height_save: c_int,
    xpos_save: c_int,
    ypos_save: c_int,
    xscale: f32,
    yscale: f32,
};

var main_window: Window = Window{
    .window = undefined,
    .monitor = undefined,
    .mode = undefined,
    .title = initial_title,
    .fullscreen = false,
    .vsync = true,
    .window_resizable = true,
    .blendmode = .blend,
    .filtermode = .linear,
    .width_save = W,
    .height_save = H,
    .xpos_save = 0,
    .ypos_save = 0,
    .xscale = 1.0,
    .yscale = 1.0,
};

var angle: f32 = 0.7;

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

    if (glfw.glfwCreateWindow(W, H, initial_title, null, null)) |win| {
        main_window.window = win;
    } else {
        return error.CouldntOpenWindow;
    }

    main_window.monitor = glfw.glfwGetWindowMonitor(main_window.window) orelse glfw.glfwGetPrimaryMonitor().?;
    main_window.mode = @constCast(glfw.glfwGetVideoMode(main_window.monitor));

    // Conditional compilation for different platforms
    if (builtin.target.os.tag == .emscripten) {
        const emsc = @import("emsc");
        emsc.emsc_init("#canvas", emsc.EMSC_TRY_WEBGL2);
    } else {
        glfw.glfwMakeContextCurrent(main_window.window);
    }

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
        const emsc = @import("emsc");
        emsc.emscripten_set_main_loop(emscriptenMainLoop, 0, true);
    } else {
        // Desktop-specific loop
        while (glfw.glfwWindowShouldClose(main_window.window) == 0) {
            mainLoop();
            glfw.glfwPollEvents();
        }
    }
}

fn mainLoop() void {
    var fb_width: c_int = undefined;
    var fb_height: c_int = undefined;
    glfw.glfwGetFramebufferSize(main_window.window, &fb_width, &fb_height);

    var win_width: c_int = undefined;
    var win_height: c_int = undefined;

    if (builtin.target.os.tag == .emscripten) {
        const emsc = @import("emsc");
        win_width = emsc.emsc_width();
        win_height = emsc.emsc_height();
    } else {
        glfw.glfwGetWindowSize(main_window.window, &win_width, &win_height);
    }

    const scale_x = @as(f32, @floatFromInt(fb_width)) / @as(f32, @floatFromInt(win_width));
    const scale_y = @as(f32, @floatFromInt(fb_height)) / @as(f32, @floatFromInt(win_height));
    main_window.xscale = scale_x;
    main_window.yscale = scale_y;

    var pass: sg.sg_pass = .{};
    sgp.sgp_begin(@intCast(fb_width), @intCast(fb_height));
    sgp.sgp_reset_transform();
    // sgp.sgp_scale(scale_x, scale_y);
    // sgp.sgp_translate(150 * scale_x, 150 * scale_y);
    // sgp.sgp_translate(150, 150);
    // sgp.sgp_rotate(angle);
    // angle += 0.01;

    sgp.sgp_set_color(1, 1, 0, 1);
    sgp.sgp_draw_filled_rect(20, 20, 300, 300);

    pass.swapchain.width = @intCast(fb_width);
    pass.swapchain.height = @intCast(fb_height);

    sg.sg_begin_pass(&pass);
    sgp.sgp_flush();
    sgp.sgp_end();
    sg.sg_end_pass();
    sg.sg_commit();

    glfw.glfwSwapBuffers(main_window.window);
}

fn emscriptenMainLoop() callconv(.c) void {
    mainLoop();
}
