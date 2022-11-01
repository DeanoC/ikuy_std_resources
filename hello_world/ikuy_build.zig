const std = @import("std");
const Library = @import("../libs/library.zig").Library;

pub fn build(b: *std.build.Builder) !*std.build.LibExeObjStep {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const helloWorldBuildRoot = b.pathFromRoot("hello_world/src/main.zig");
    const exe = b.addExecutable("hello_world", helloWorldBuildRoot);
    exe.setTarget(target);
    exe.setBuildMode(mode);

    const exe_tests = b.addTest("src/main.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
    return exe;
}
