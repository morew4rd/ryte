const std = @import("std");
const builtin = @import("builtin");
const Build = std.Build;
const OptimizeMode = std.builtin.OptimizeMode;
const ResolvedTarget = Build.ResolvedTarget;
const Compile = Build.Step.Compile;
const Module = Build.Module;

// paths: deps
const deps_prefix = "./deps/";
const glfw_path = deps_prefix ++ "glfw-3.4";
const freetype_path = deps_prefix ++ "freetype-2.13.2";
const physfs_path = deps_prefix ++ "physfs-3.2.0";
const log_c_path = deps_prefix ++ "log_c_f9ea349";
const sokol_path = deps_prefix ++ "sokol_547f455";
const sokol_gp_path = deps_prefix ++ "sokol_gp_a6ce39f";
const stb_path = deps_prefix ++ "stb_013ac3b";
const fontstash_path = deps_prefix ++ "fontstash_b5ddc97";

const bindings_prefix = "./bindings/";
const glfw_bindings = bindings_prefix ++ "glfw3_bindings.zig";

const example_root_source = "./example/main.zig";

// build options
const RyteBuildOptions = struct {
    target: ResolvedTarget,
    optimize: OptimizeMode,
    is_wasm: bool,
    is_windows: bool,
    is_macos: bool,
    is_linux: bool,
};

//
const RyteDependencies = struct {
    glfw: ?*Compile,
};

//
const RyteModules = struct {
    glfw_mod: *Module,
};

// bindings
fn getModules(b: *std.Build) RyteModules {
    return RyteModules{
        .glfw_mod = b.addModule("glfw", .{ .root_source_file = b.path(glfw_bindings) }),
    };
}

// dep: glfw
fn buildGlfw(b: *std.Build, opt: RyteBuildOptions) !?*Compile {
    if (opt.is_wasm) {
        return null;
    }

    const glfw =
        b.addStaticLibrary(.{
        .name = "glfw",
        .target = opt.target,
        .optimize = opt.optimize,
    });
    b.installArtifact(glfw);

    glfw.addIncludePath(b.path(glfw_path ++ "/include"));
    glfw.linkLibC();

    const src_dir = glfw_path ++ "/src/";

    if (opt.is_windows) {
        glfw.linkSystemLibrary("gdi32");
        glfw.linkSystemLibrary("user32");
        glfw.linkSystemLibrary("shell32");
        glfw.addCSourceFiles(.{
            .files = &.{
                src_dir ++ "platform.c",
                src_dir ++ "monitor.c",
                src_dir ++ "init.c",
                src_dir ++ "vulkan.c",
                src_dir ++ "input.c",
                src_dir ++ "context.c",
                src_dir ++ "window.c",
                src_dir ++ "osmesa_context.c",
                src_dir ++ "egl_context.c",
                src_dir ++ "null_init.c",
                src_dir ++ "null_monitor.c",
                src_dir ++ "null_window.c",
                src_dir ++ "null_joystick.c",
                src_dir ++ "wgl_context.c",
                src_dir ++ "win32_thread.c",
                src_dir ++ "win32_init.c",
                src_dir ++ "win32_monitor.c",
                src_dir ++ "win32_time.c",
                src_dir ++ "win32_joystick.c",
                src_dir ++ "win32_window.c",
                src_dir ++ "win32_module.c",
            },
            .flags = &.{"-D_GLFW_WIN32"},
        });
    } else if (opt.is_macos) {
        // if (b.lazyDependency("system_sdk", .{})) |system_sdk| {
        //     glfwlib.addFrameworkPath(system_sdk.path("macos12/System/Library/Frameworks"));
        //     glfwlib.addSystemIncludePath(system_sdk.path("macos12/usr/include"));
        //     glfwlib.addLibraryPath(system_sdk.path("macos12/usr/lib"));
        // }
        glfw.linkSystemLibrary("objc");
        glfw.linkFramework("IOKit");
        glfw.linkFramework("CoreFoundation");
        glfw.linkFramework("Metal");
        glfw.linkFramework("AppKit");
        glfw.linkFramework("CoreServices");
        glfw.linkFramework("CoreGraphics");
        glfw.linkFramework("Foundation");
        glfw.linkFramework("OpenGL");
        glfw.addCSourceFiles(.{
            .files = &.{
                src_dir ++ "platform.c",
                src_dir ++ "monitor.c",
                src_dir ++ "init.c",
                src_dir ++ "vulkan.c",
                src_dir ++ "input.c",
                src_dir ++ "context.c",
                src_dir ++ "window.c",
                src_dir ++ "osmesa_context.c",
                src_dir ++ "egl_context.c",
                src_dir ++ "null_init.c",
                src_dir ++ "null_monitor.c",
                src_dir ++ "null_window.c",
                src_dir ++ "null_joystick.c",
                src_dir ++ "posix_thread.c",
                src_dir ++ "posix_module.c",
                src_dir ++ "posix_poll.c",
                src_dir ++ "nsgl_context.m",
                src_dir ++ "cocoa_time.c",
                src_dir ++ "cocoa_joystick.m",
                src_dir ++ "cocoa_init.m",
                src_dir ++ "cocoa_window.m",
                src_dir ++ "cocoa_monitor.m",
            },
            .flags = &.{"-D_GLFW_COCOA"},
        });
    } else if (opt.is_linux) {
        if (b.lazyDependency("system_sdk", .{})) |system_sdk| {
            glfw.addSystemIncludePath(system_sdk.path("linux/include"));
            glfw.addSystemIncludePath(system_sdk.path("linux/include/wayland"));
            glfw.addIncludePath(b.path(src_dir ++ "wayland"));

            if (opt.target.result.cpu.arch.isX86()) {
                glfw.addLibraryPath(system_sdk.path("linux/lib/x86_64-linux-gnu"));
            } else {
                glfw.addLibraryPath(system_sdk.path("linux/lib/aarch64-linux-gnu"));
            }
        }
        glfw.addCSourceFiles(.{
            .files = &.{
                src_dir ++ "platform.c",
                src_dir ++ "monitor.c",
                src_dir ++ "init.c",
                src_dir ++ "vulkan.c",
                src_dir ++ "input.c",
                src_dir ++ "context.c",
                src_dir ++ "window.c",
                src_dir ++ "osmesa_context.c",
                src_dir ++ "egl_context.c",
                src_dir ++ "null_init.c",
                src_dir ++ "null_monitor.c",
                src_dir ++ "null_window.c",
                src_dir ++ "null_joystick.c",
                src_dir ++ "posix_time.c",
                src_dir ++ "posix_thread.c",
                src_dir ++ "posix_module.c",
                src_dir ++ "egl_context.c",
            },
            .flags = &.{},
        });
        // if (options.enable_x11 or options.enable_wayland) {
        //     glfwlib.addCSourceFiles(.{
        //         .files = &.{
        //             src_dir ++ "xkb_unicode.c",
        //             src_dir ++ "linux_joystick.c",
        //             src_dir ++ "posix_poll.c",
        //         },
        //         .flags = &.{},
        //     });
        // }
        // if (options.enable_x11) {
        //     glfwlib.addCSourceFiles(.{
        //         .files = &.{
        //             src_dir ++ "x11_init.c",
        //             src_dir ++ "x11_monitor.c",
        //             src_dir ++ "x11_window.c",
        //             src_dir ++ "glx_context.c",
        //         },
        //         .flags = &.{},
        //     });
        //     // glfw.defineCMacro("_GLFW_X11", "1");
        //     // MG REMOVED
        //     glfwlib.linkSystemLibrary("X11");
        // }
        // if (options.enable_wayland) {
        //     glfwlib.addCSourceFiles(.{
        //         .files = &.{
        //             src_dir ++ "wl_init.c",
        //             src_dir ++ "wl_monitor.c",
        //             src_dir ++ "wl_window.c",
        //         },
        //         .flags = &.{},
        //     });
        //     // glfw.defineCMacro("_GLFW_WAYLAND", "1");
        //     // MG REMOVED///// use  z_app.addCFlags(&[_][]const u8{"-DNO_CPP=1"});
        // }
    }

    return glfw;
}

//
fn buildExample(
    b: *std.Build,
    opt: RyteBuildOptions,
    deps: RyteDependencies,
    mods: RyteModules,
) !void {
    const exe = b.addExecutable(.{
        .name = "ryte_example",
        .root_source_file = b.path(example_root_source),
        .target = opt.target,
        .optimize = opt.optimize,
    });

    exe.root_module.addImport("glfw", mods.glfw_mod);

    if (!opt.is_wasm) {
        exe.linkLibrary(deps.glfw.?);
    }

    b.installArtifact(exe);
}

// build entry point
pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const opt = RyteBuildOptions{
        .target = target,
        .optimize = optimize,
        .is_wasm = target.result.isWasm(),
        .is_linux = target.result.os.tag == .linux,
        .is_macos = target.result.os.tag == .macos,
        .is_windows = target.result.os.tag == .windows,
    };

    const deps = RyteDependencies{
        .glfw = try buildGlfw(b, opt),
    };
    const mods = getModules(b);

    try buildExample(b, opt, deps, mods);
}
