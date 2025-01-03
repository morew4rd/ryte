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

fn init() !void {
    if (glfw.glfwInit() == 0) {
        return error.GlfwInitFailed;
    }

    // Set OpenGL context hints
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR, 3);
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_FORWARD_COMPAT, glfw.GLFW_TRUE);
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE, glfw.GLFW_OPENGL_CORE_PROFILE);
    glfw.glfwWindowHint(glfw.GLFW_DOUBLEBUFFER, 1);

    // Initialize PHYSFS
    _ = physfs.PHYSFS_init("");

    // Initialize audio
    raudio.InitAudioDevice();
    if (!raudio.IsAudioDeviceReady()) {
        return error.RaudioInitFailed;
    }

    // Conditional compilation for different platforms
    if (builtin.target.os.tag == .emscripten) {
        const emsc = @import("emsc");
        emsc.emsc_init("#canvas", emsc.EMSC_TRY_WEBGL2);
        main_window.window = glfw.glfwCreateWindow(emsc.emsc_width(), emsc.emsc_height(), initial_title, null, null) orelse return error.CouldntOpenWindow;
        emsc.emscripten_set_window_title(initial_title);
    } else {
        // Start invisible on desktop platforms
        glfw.glfwWindowHint(glfw.GLFW_VISIBLE, 0);
        if (!main_window.window_resizable) {
            glfw.glfwWindowHint(glfw.GLFW_RESIZABLE, 0);
        }

        // Create window
        main_window.window = glfw.glfwCreateWindow(W, H, initial_title, null, null) orelse return error.CouldntOpenWindow;

        // Get monitor and video mode
        main_window.monitor = glfw.glfwGetWindowMonitor(main_window.window) orelse glfw.glfwGetPrimaryMonitor().?;
        main_window.mode = @constCast(glfw.glfwGetVideoMode(main_window.monitor));

        // Center window on screen

        const xpos = @divFloor(main_window.mode.width - W, 2);
        const ypos = @divFloor(main_window.mode.height - H, 2);
        glfw.glfwSetWindowPos(main_window.window, xpos, ypos);

        // Save initial position
        glfw.glfwGetWindowPos(main_window.window, &main_window.xpos_save, &main_window.ypos_save);

        // Show window
        glfw.glfwShowWindow(main_window.window);
    }

    // Set VSync
    if (main_window.vsync) {
        glfw.glfwSwapInterval(1);
    } else {
        glfw.glfwSwapInterval(0);
    }

    // Make context current
    glfw.glfwMakeContextCurrent(main_window.window);

    // Initialize Sokol GFX
    var sgdesc: sg.sg_desc = .{};
    sg.sg_setup(&sgdesc);
    if (!sg.sg_isvalid()) {
        return error.SG_IsInvalid;
    }

    // Initialize Sokol GP
    var sgpdesc: sgp.sgp_desc = .{};
    sgp.sgp_setup(&sgpdesc);
    if (!sg.sg_isvalid()) {
        return error.SGP_IsInvalid;
    }
}

fn deinit() void {
    defer glfw.glfwTerminate();
    defer raudio.CloseAudioDevice();
    defer _ = physfs.PHYSFS_deinit();
    defer sg.sg_shutdown();
    defer sgp.sgp_shutdown();
}

pub fn main() !void {
    std.debug.print("ryte example.\n", .{});
    try init();
    defer deinit();

    // Conditional compilation for different platforms
    if (builtin.target.os.tag == .emscripten) {
        const emsc = @import("emsc");
        emsc.emscripten_set_main_loop(mainLoop, 0, true);
    } else {
        // Desktop-specific loop
        while (glfw.glfwWindowShouldClose(main_window.window) == 0) {
            mainLoop();
            glfw.glfwPollEvents();
        }
    }
}

fn tick_fn() void {
    sgp.sgp_set_color(1, 1, 0, 1);
    sgp.sgp_draw_filled_rect(20, 20, 300, 300);
}

fn mainLoop() callconv(.c) void {
    // Get window and framebuffer dimensions
    var fb_width: c_int = undefined;
    var fb_height: c_int = undefined;
    var win_width: c_int = undefined;
    var win_height: c_int = undefined;
    var xscale: f32 = 1.0;
    var yscale: f32 = 1.0;

    if (builtin.target.os.tag == .emscripten) {
        const emsc = @import("emsc");
        win_width = emsc.emsc_width();
        win_height = emsc.emsc_height();
        fb_width = win_width;
        fb_height = win_height;
    } else {
        glfw.glfwGetWindowSize(main_window.window, &win_width, &win_height);
        glfw.glfwGetFramebufferSize(main_window.window, &fb_width, &fb_height);
        glfw.glfwGetWindowContentScale(main_window.window, &xscale, &yscale);
    }

    // Calculate scaling factors
    const scale_x = @as(f32, @floatFromInt(fb_width)) / @as(f32, @floatFromInt(win_width));
    const scale_y = @as(f32, @floatFromInt(fb_height)) / @as(f32, @floatFromInt(win_height));
    main_window.xscale = scale_x;
    main_window.yscale = scale_y;

    // Convert dimensions to f32 for calculations
    const fb_width_f = @as(f32, @floatFromInt(fb_width));
    const fb_height_f = @as(f32, @floatFromInt(fb_height));

    // Setup viewport and projection
    const ml = 0.0; // margins left
    const mr = 0.0; // margins right
    const mt = 0.0; // margins top
    const mb = 0.0; // margins bottom
    const pl = 0.0; // padding left
    const pr = 0.0; // padding right
    const pt = 0.0; // padding top
    const pb = 0.0; // padding bottom

    sgp.sgp_begin(@intCast(fb_width), @intCast(fb_height));

    // Set viewport with margins and scaling
    sgp.sgp_viewport(@intFromFloat(ml * xscale), @intFromFloat(mt * yscale), @intFromFloat((fb_width_f - ml - mr) * xscale), @intFromFloat((fb_height_f - mt - mb) * yscale));

    // Set projection with padding
    sgp.sgp_project(-pl, fb_width_f + pr, -pt, fb_height_f + pb);

    // Reset transform and set blend mode
    sgp.sgp_reset_transform();
    sgp.sgp_set_blend_mode(@intFromEnum(main_window.blendmode));

    // Execute tick function
    tick_fn();

    // Setup and execute rendering pass
    var pass: sg.sg_pass = .{
        .swapchain = .{
            .width = @intCast(fb_width),
            .height = @intCast(fb_height),
        },
    };

    pass.swapchain.width = @intCast(fb_width);
    pass.swapchain.height = @intCast(fb_height);
    sg.sg_begin_pass(&pass);
    sgp.sgp_flush();
    sgp.sgp_end();
    sg.sg_end_pass();
    sg.sg_commit();

    // Swap buffers
    glfw.glfwSwapBuffers(main_window.window);

    // Check for window close
    if (glfw.glfwWindowShouldClose(main_window.window) != 0) {
        if (builtin.target.os.tag == .emscripten) {
            const emsc = @import("emsc");
            emsc.emscripten_cancel_main_loop();
        }
    }
}
