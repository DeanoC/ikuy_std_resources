const std = @import("std");
const helloWorldBuild = @import("hello_world/ikuy_build.zig");
const Library = @import("libs/library.zig").Library;
const sdkPath = @import("libs/library.zig").sdkPath;

fn sdl2Link(_: *const Library, b: *std.build.Builder, exe: *std.build.LibExeObjStep) void {
    const sdl2 = @import("libs/SDL.zig/Sdk.zig");
    const sdk = sdl2.init(b);
    sdk.link(exe, .dynamic);
    exe.addPackage(sdk.getWrapperPackage("sdl2"));
}

pub fn build(b: *std.build.Builder) !void {
    var libraryPackages = std.StringHashMap(Library).init(b.allocator);
    try libraryPackages.put("sdl2", Library{ .link = &sdl2Link, .name = "sdl2", .path = sdkPath("/libs/SDL.zig/Sdk.zig") });

    helloWorldBuild.build(b, libraryPackages);
}
