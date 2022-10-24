const std = @import("std");
const helloWorldBuild = @import("hello_world/build.zig");

pub fn build(b: *std.build.Builder) !void {
    helloWorldBuild.build(b);
}
