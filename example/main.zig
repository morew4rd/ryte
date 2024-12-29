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
    defer glfw.glfwTerminate();

    while (glfw.glfwWindowShouldClose(win) == 0) {
        glfw.glfwPollEvents();
    }
}
