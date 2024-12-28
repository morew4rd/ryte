const std = @import("std");
const glfw = @import("glfw");

pub fn main() !void {
    std.debug.print("ryte example.\n", .{});
    if (glfw.glfwInit() == 0) {
        var err: [*c]const u8 = undefined;
        _ = glfw.glfwGetError(&err);
        std.debug.print("glfw init failed: {s}\n", .{err});
        return error.GlfwInitFailed;
    }
}
