const std = @import("std");
const builtin = @import("builtin");
const glfw = @import("glfw");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");

pub const W = 800;
pub const H = 600;
pub const initial_title = "ryte -- lyte2d in zig";

pub const BlendMode = enum(u8) {
    none = 0,
    blend = 1,
    add = 2,
    mod = 3,
    mul = 4,
};

pub const FilterMode = enum(u8) {
    _invalid = 1,
    nearest = 2,
    linear = 3,
};

pub const TickState = struct {
    udata: ?*anyopaque,
    delta_time: f64,
    total_time: f64,
    width: c_int,
    height: c_int,
    resized: bool,
    fullscreen: bool,
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
    last_frame_time: f64 = 0.0,
    delta_time: f64 = 0.0,
    total_time: f64 = 0.0,
    last_width: c_int = 0,
    last_height: c_int = 0,
    margins: struct {
        left: f32 = 0.0,
        right: f32 = 0.0,
        top: f32 = 0.0,
        bottom: f32 = 0.0,
    },
    paddings: struct {
        left: f32 = 0.0,
        right: f32 = 0.0,
        top: f32 = 0.0,
        bottom: f32 = 0.0,
    },
    tick_fn: ?*const fn (TickState) void = null,
    tick_data: ?*anyopaque = null,
};

pub var main_window: Window = Window{
    .window = undefined,
    .monitor = undefined,
    .mode = undefined,
    .title = initial_title,
    .fullscreen = false,
    .vsync = true,
    .window_resizable = true,
    .blendmode = .blend,
    .filtermode = .nearest,
    .width_save = W,
    .height_save = H,
    .xpos_save = 0,
    .ypos_save = 0,
    .xscale = 1.0,
    .yscale = 1.0,
    .margins = .{},
    .paddings = .{},
};

pub fn init() !void {
    if (glfw.glfwInit() == 0) {
        return error.GlfwInitFailed;
    }

    // Set OpenGL context hints
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR, 3);
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_FORWARD_COMPAT, glfw.GLFW_TRUE);
    glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE, glfw.GLFW_OPENGL_CORE_PROFILE);
    glfw.glfwWindowHint(glfw.GLFW_DOUBLEBUFFER, 1);

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

pub fn deinit() void {
    defer glfw.glfwTerminate();
    defer sg.sg_shutdown();
    defer sgp.sgp_shutdown();
}

pub fn setTickFn(tick_fn: *const fn (TickState) void, udata: ?*anyopaque) void {
    main_window.tick_fn = tick_fn;
    main_window.tick_data = udata;
}

pub fn startMainLoop() void {
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

fn mainLoop() callconv(.c) void {
    // Delta time calculation
    const current_time = glfw.glfwGetTime();
    const delta_time = current_time - main_window.last_frame_time;
    main_window.last_frame_time = current_time;
    main_window.delta_time = delta_time;
    main_window.total_time += delta_time;

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

    // Check for window resize
    var resized = false;
    if (main_window.last_width != win_width or main_window.last_height != win_height) {
        resized = true;
        main_window.last_width = win_width;
        main_window.last_height = win_height;
    }

    // Convert dimensions to f32 for calculations
    const fb_width_f = @as(f32, @floatFromInt(fb_width));
    const fb_height_f = @as(f32, @floatFromInt(fb_height));

    // Setup viewport and projection
    const ml = main_window.margins.left;
    const mr = main_window.margins.right;
    const mt = main_window.margins.top;
    const mb = main_window.margins.bottom;
    const pl = main_window.paddings.left;
    const pr = main_window.paddings.right;
    const pt = main_window.paddings.top;
    const pb = main_window.paddings.bottom;

    sgp.sgp_begin(@intCast(fb_width), @intCast(fb_height));
    sgp.sgp_viewport(@intFromFloat(ml * xscale), @intFromFloat(mt * yscale), @intFromFloat((fb_width_f - ml - mr) * xscale), @intFromFloat((fb_height_f - mt - mb) * yscale));
    sgp.sgp_project(-pl, fb_width_f + pr, -pt, fb_height_f + pb);
    sgp.sgp_reset_transform();
    sgp.sgp_set_blend_mode(@intFromEnum(main_window.blendmode));

    // Execute tick function
    if (main_window.tick_fn) |tick| {
        const ts = TickState{
            .udata = main_window.tick_data,
            .delta_time = delta_time,
            .total_time = main_window.total_time,
            .width = fb_width + @as(c_int, @intFromFloat(-pl - pr)),
            .height = fb_height + @as(c_int, @intFromFloat(-pt - pb)),
            .resized = resized,
            .fullscreen = main_window.fullscreen,
        };
        tick(ts);
    } else {
        // Default drawing if no tick function
        sgp.sgp_set_color(0, 0, 1, 1);
        sgp.sgp_draw_filled_rect(20, 20, 300, 300);
    }

    // Setup and execute rendering pass
    var pass: sg.sg_pass = .{
        .swapchain = .{
            .width = @intCast(fb_width),
            .height = @intCast(fb_height),
        },
    };
    sg.sg_begin_pass(&pass);
    sgp.sgp_flush();
    sgp.sgp_end();
    sg.sg_end_pass();
    sg.sg_commit();

    // Swap buffers
    glfw.glfwSwapBuffers(main_window.window);

    // Poll events
    glfw.glfwPollEvents();

    // Check for window close
    if (glfw.glfwWindowShouldClose(main_window.window) != 0) {
        if (builtin.target.os.tag == .emscripten) {
            const emsc = @import("emsc");
            emsc.emscripten_cancel_main_loop();
        }
    }
}
