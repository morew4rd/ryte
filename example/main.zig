const std = @import("std");

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
        var err: [*c]const u8 = undefined;
        _ = glfw.glfwGetError(&err);
        std.debug.print("glfw init failed: {s}\n", .{err});
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

    var sgdesc: sg.sg_desc = .{
        // .logger = .{ .func = slog }
    };
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

    while (glfw.glfwWindowShouldClose(win) == 0) {
        var pass: sg.sg_pass = .{};
        sgp.sgp_begin(W, H);
        // sgp.sgp_viewport(0, 0, W, H);
        // sgp.sgp_project(0, 0, W, H);
        sgp.sgp_reset_transform();

        sgp.sgp_set_color(1, 1, 0, 1);
        sgp.sgp_draw_filled_rect(20, 20, 300, 300);

        pass.swapchain.width = W;
        pass.swapchain.height = H;

        sg.sg_begin_pass(&pass);
        sgp.sgp_flush();
        sgp.sgp_end();
        sg.sg_end_pass();
        sg.sg_commit();

        glfw.glfwSwapBuffers(win);

        glfw.glfwPollEvents();
    }
}
