const std = @import("std");
const Library = @import("../libs/library.zig").Library;

pub fn build(b: *std.build.Builder, libs: std.StringHashMap(Library)) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
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

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const exe_tests = b.addTest("src/main.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
}