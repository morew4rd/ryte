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

// paths: deps (single header libs)
const sokol_gfx_path = deps_prefix ++ "sokol_547f455";
const sokol_gp_path = deps_prefix ++ "sokol_gp_a6ce39f";
const stb_path = deps_prefix ++ "stb_013ac3b";
const fontstash_path = deps_prefix ++ "fontstash_b5ddc97/src";
const mg_libs_path = deps_prefix ++ "mg_libs";
const header_impl_src = deps_prefix ++ "/header_impls.c";

// paths: bindings files
const bindings_prefix = "./bindings/";
const glfw_bindings = bindings_prefix ++ "glfw3_bindings.zig";
const physfs_bindings = bindings_prefix ++ "physfs_bindings.zig";
const sokol_gfx_bindings = bindings_prefix ++ "sokol_gfx_bindings.zig";
const sokol_gp_bindings = bindings_prefix ++ "sokol_gp_bindings.zig";
// const freetype_bindings = bindings_prefix ++ "freetype_bindings.zig";

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
    freetype: *Compile,
    physfs: *Compile,
    header_libs: *Compile,
};

// for bindings
const RyteModules = struct {
    glfw_mod: *Module,
    physfs_mod: *Module,
    sokol_gfx_mod: *Module,
    sokol_gp_mod: *Module,
    // freetype_mod: *Module,
};

// bindings
fn getModules(b: *std.Build) RyteModules {
    return RyteModules{
        .glfw_mod = b.addModule("glfw", .{ .root_source_file = b.path(glfw_bindings) }),
        .physfs_mod = b.addModule("physfs", .{ .root_source_file = b.path(physfs_bindings) }),
        .sokol_gfx_mod = b.addModule("sokol_gfx", .{ .root_source_file = b.path(sokol_gfx_bindings) }),
        .sokol_gp_mod = b.addModule("sokol_gp", .{ .root_source_file = b.path(sokol_gp_bindings) }),
        // .freetype_mod = b.addModule("freetype", .{ .root_source_file = b.path(freetype_bindings) }),
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

//dep: freetype
fn buildFreetype(b: *std.Build, opt: RyteBuildOptions) !*Compile {
    const freetype = b.addStaticLibrary(.{
        .name = "freetype",
        .target = opt.target,
        .optimize = opt.optimize,
    });

    const freetype_sources = &[_][]const u8{
        // Base layer
        freetype_path ++ "/src/base/ftbase.c",
        freetype_path ++ "/src/base/ftbbox.c",
        freetype_path ++ "/src/base/ftbdf.c",
        freetype_path ++ "/src/base/ftbitmap.c",
        freetype_path ++ "/src/base/ftcid.c",
        freetype_path ++ "/src/base/ftfstype.c",
        freetype_path ++ "/src/base/ftgasp.c",
        freetype_path ++ "/src/base/ftglyph.c",
        freetype_path ++ "/src/base/ftgxval.c",
        freetype_path ++ "/src/base/ftinit.c",
        freetype_path ++ "/src/base/ftmm.c",
        freetype_path ++ "/src/base/ftotval.c",
        freetype_path ++ "/src/base/ftpatent.c",
        freetype_path ++ "/src/base/ftpfr.c",
        freetype_path ++ "/src/base/ftstroke.c",
        freetype_path ++ "/src/base/ftsynth.c",
        freetype_path ++ "/src/base/ftsystem.c",
        freetype_path ++ "/src/base/fttype1.c",
        freetype_path ++ "/src/base/ftwinfnt.c",
        freetype_path ++ "/src/base/ftdebug.c",

        freetype_path ++ "/src/svg/ftsvg.c",

        // Font drivers
        freetype_path ++ "/src/bdf/bdf.c",
        freetype_path ++ "/src/cff/cff.c",
        freetype_path ++ "/src/cid/type1cid.c",
        freetype_path ++ "/src/pcf/pcf.c",
        freetype_path ++ "/src/pfr/pfr.c",
        freetype_path ++ "/src/sfnt/sfnt.c",
        freetype_path ++ "/src/truetype/truetype.c",
        freetype_path ++ "/src/type1/type1.c",
        freetype_path ++ "/src/type42/type42.c",
        freetype_path ++ "/src/winfonts/winfnt.c",

        // Rasterizers
        freetype_path ++ "/src/raster/raster.c",
        freetype_path ++ "/src/smooth/smooth.c",
        freetype_path ++ "/src/sdf/sdf.c",

        // Auxiliary modules
        freetype_path ++ "/src/autofit/autofit.c",
        freetype_path ++ "/src/cache/ftcache.c",
        freetype_path ++ "/src/gzip/ftgzip.c",
        freetype_path ++ "/src/lzw/ftlzw.c",
        freetype_path ++ "/src/bzip2/ftbzip2.c",
        freetype_path ++ "/src/gxvalid/gxvalid.c",
        freetype_path ++ "/src/otvalid/otvalid.c",
        freetype_path ++ "/src/psaux/psaux.c",
        freetype_path ++ "/src/pshinter/pshinter.c",
        freetype_path ++ "/src/psnames/psnames.c",
    };

    const freetype_flags = &[_][]const u8{
        "-DFT2_BUILD_LIBRARY",
        "-DFT_CONFIG_OPTION_ERROR_STRINGS",
        "-DFT_CONFIG_MODULES_H=\"freetype/config/ftmodule.h\"",
        "-DFT_ERR_PREFIX=FT_Err_",
        "-I" ++ freetype_path ++ "/include",
        "-I" ++ freetype_path ++ "/src",
    };

    freetype.addCSourceFiles(.{
        .files = freetype_sources,
        .flags = freetype_flags,
    });

    if (opt.is_windows) {
        freetype.addCSourceFile(.{
            .file = b.path(freetype_path ++ "/builds/windows/ftsystem.c"),
            .flags = freetype_flags,
        });
    } else if (opt.is_macos or opt.is_linux) {
        freetype.addCSourceFile(.{
            .file = b.path(freetype_path ++ "/builds/unix/ftsystem.c"),
            .flags = freetype_flags,
        });
    }
    if (opt.is_macos) {
        freetype.linkFramework("CoreFoundation");
        freetype.linkFramework("CoreGraphics");
        freetype.linkFramework("CoreText");
    }
    // Add POSIX headers for Unix systems
    if (opt.is_macos or opt.is_linux) {
        freetype.root_module.addCMacro("HAVE_UNISTD_H", "1");
        freetype.root_module.addCMacro("HAVE_FCNTL_H", "1");
    }

    freetype.addIncludePath(b.path(freetype_path ++ "/include"));
    freetype.linkLibC();

    b.installArtifact(freetype);

    return freetype;
}

// dep: physfs
fn buildPhysfs(b: *std.Build, opt: RyteBuildOptions) !*Compile {
    const physfs = b.addStaticLibrary(.{
        .name = "physfs",
        .target = opt.target,
        .optimize = opt.optimize,
    });

    const physfs_sources = &[_][]const u8{
        physfs_path ++ "/src/physfs.c",
        physfs_path ++ "/src/physfs_byteorder.c",
        physfs_path ++ "/src/physfs_unicode.c",
        physfs_path ++ "/src/physfs_platform_posix.c",
        physfs_path ++ "/src/physfs_platform_unix.c",
        physfs_path ++ "/src/physfs_platform_windows.c",
        physfs_path ++ "/src/physfs_platform_os2.c",
        physfs_path ++ "/src/physfs_platform_qnx.c",
        physfs_path ++ "/src/physfs_platform_android.c",
        physfs_path ++ "/src/physfs_archiver_dir.c",
        physfs_path ++ "/src/physfs_archiver_unpacked.c",
        physfs_path ++ "/src/physfs_archiver_grp.c",
        physfs_path ++ "/src/physfs_archiver_hog.c",
        physfs_path ++ "/src/physfs_archiver_7z.c",
        physfs_path ++ "/src/physfs_archiver_mvl.c",
        physfs_path ++ "/src/physfs_archiver_qpak.c",
        physfs_path ++ "/src/physfs_archiver_wad.c",
        physfs_path ++ "/src/physfs_archiver_zip.c",
        physfs_path ++ "/src/physfs_archiver_slb.c",
        physfs_path ++ "/src/physfs_archiver_iso9660.c",
        physfs_path ++ "/src/physfs_archiver_vdf.c",
    };

    const physfs_flags = &[_][]const u8{
        "-DPHYSFS_BUILD_STATIC=1",
        "-DPHYSFS_BUILD_SHARED=0",
        "-DPHYSFS_BUILD_TEST=0",
        "-DPHYSFS_BUILD_DOCS=0",
        "-DPHYSFS_ARCHIVE_GRP=0",
        "-DPHYSFS_ARCHIVE_WAD=0",
        "-DPHYSFS_ARCHIVE_HOG=0",
        "-DPHYSFS_ARCHIVE_MVL=0",
        "-DPHYSFS_ARCHIVE_QPAK=0",
        "-DPHYSFS_ARCHIVE_SLB=0",
        "-DPHYSFS_ARCHIVE_ISO9660=0",
        "-DPHYSFS_ARCHIVE_VDF=0",
        "-DPHYSFS_ARCHIVE_ZIP=1",
        "-DPHYSFS_ARCHIVE_7Z=1",
    };

    physfs.addCSourceFiles(.{
        .files = physfs_sources,
        .flags = physfs_flags,
    });

    if (opt.is_macos) {
        physfs.addCSourceFile(.{
            .file = b.path(physfs_path ++ "/src/physfs_platform_apple.m"),
            .flags = physfs_flags,
        });
    }
    // TODO windows / linux C files?

    if (opt.is_windows) {
        physfs.linkSystemLibrary("ws2_32");
        physfs.linkSystemLibrary("advapi32");
        physfs.linkSystemLibrary("shell32");
        physfs.linkSystemLibrary("user32");
    } else if (opt.is_macos) {
        physfs.linkFramework("IOKit");
        physfs.linkFramework("Foundation");
    } else if (opt.is_linux) {
        physfs.linkSystemLibrary("pthread");
    }

    physfs.addIncludePath(b.path(physfs_path ++ "/src"));
    physfs.linkLibC();

    b.installArtifact(physfs);

    return physfs;
}

// deps: sokol_gfx, sokol_gp, fontstash, stb libs
fn buildHeaderOnlyLibs(b: *std.Build, opt: RyteBuildOptions) !*Compile {
    //
    const header_libs =
        b.addStaticLibrary(.{
        .name = "header_libs",
        .target = opt.target,
        .optimize = opt.optimize,
    });
    b.installArtifact(header_libs);

    header_libs.addCSourceFile(.{
        .file = b.path(header_impl_src),
        .flags = &.{},
    });

    header_libs.addIncludePath(b.path(sokol_gfx_path));
    header_libs.addIncludePath(b.path(sokol_gp_path));
    header_libs.addIncludePath(b.path(fontstash_path));
    header_libs.addIncludePath(b.path(stb_path));
    header_libs.addIncludePath(b.path(mg_libs_path));
    header_libs.addIncludePath(b.path(freetype_path ++ "/include")); // for fontstash
    header_libs.linkLibC();

    // const src_dir = glfw_path ++ "/src/";

    return header_libs;
}

// example
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
    exe.root_module.addImport("physfs", mods.physfs_mod);
    exe.root_module.addImport("sokol_gfx", mods.sokol_gfx_mod);
    exe.root_module.addImport("sokol_gp", mods.sokol_gp_mod);
    // exe.root_module.addImport("freetype", mods.freetype_mod);

    if (!opt.is_wasm) {
        exe.linkLibrary(deps.glfw.?);
    }
    exe.linkLibrary(deps.freetype);
    exe.linkLibrary(deps.physfs);
    exe.linkLibrary(deps.header_libs);

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
        .freetype = try buildFreetype(b, opt),
        .physfs = try buildPhysfs(b, opt),
        .header_libs = try buildHeaderOnlyLibs(b, opt),
    };
    const mods = getModules(b);

    try buildExample(b, opt, deps, mods);
}
