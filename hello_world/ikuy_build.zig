const std = @import("std");
const Library = @import("../libs/library.zig").Library;

pub fn build(b: *std.build.Builder, libs: std.StringHashMap(Library)) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const helloWorldBuildRoot = b.pathFromRoot("hello_world/src/main.zig");
    const exe = b.addExecutable("hello_world", helloWorldBuildRoot);
    exe.setTarget(target);
    exe.setBuildMode(mode);

    // link libraries passed in from ikuy
    var libIt = libs.iterator();
    while (libIt.next()) |kv| {
        kv.value_ptr.link(kv.value_ptr, b, exe);
    }

    exe.install();

    const exe_tests = b.addTest("src/main.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
}
