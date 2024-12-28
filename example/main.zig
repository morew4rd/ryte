const std = @import("std");
const glfw = @import("glfw");

const W = 800;
const H = 600;

pub fn main() !void {
    std.debug.print("ryte example.\n", .{});
    if (glfw.glfwInit() == 0) {
        var err: [*c]const u8 = undefined;
        _ = glfw.glfwGetError(&err);
        std.debug.print("glfw init failed: {s}\n", .{err});
        return error.GlfwInitFailed;
    }
    const win = glfw.glfwCreateWindow(W, H, "hello", null, null);
    if (win == null) {
        return error.CouldntOpenWindow;
    }
    defer glfw.glfwTerminate();

    while (glfw.glfwWindowShouldClose(win) == 0) {
        glfw.glfwPollEvents();
    }
}
