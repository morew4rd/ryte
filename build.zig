const std = @import("std");
const builtin = @import("builtin");
const Build = std.Build;
const OptimizeMode = std.builtin.OptimizeMode;
const ResolvedTarget = Build.ResolvedTarget;

fn buildExample(b: *std.Build, target: ResolvedTarget, optimize: OptimizeMode) !void {
    const exe = b.addExecutable(.{
        .name = "ryte_example",
        .root_source_file = b.path("example/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    b.installArtifact(exe);
}

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    try buildExample(b, target, optimize);
}
