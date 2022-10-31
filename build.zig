// DO NOT EDIT - Autogenerated by Overlord
const std = @import("std");
const Library = @import("libs/library.zig").Library;
const sdkPath = @import("libs/library.zig").sdkPath;

const hello_world = @import("hello_world/ikuy_build.zig");

pub fn tiny_imageformatLink(library: *const Library, builder: *std.build.Builder, executable: *std.build.LibExeObjStep) void {
    const base_dir = "libs/tiny_imageformat/";
    const main_path = base_dir ++ "package.zig";
    const format_gen_build = @import("libs/tiny_imageformat/package.zig");
    const format_gen = format_gen_build.buildFormatGen(builder, executable.target, builder.standardReleaseOptions(), base_dir);
    executable.step.dependOn(&format_gen.step);
    const pkg = std.build.Pkg{ .name = library.name, .source = .{ .path = main_path } };
    executable.addPackage(pkg);
}
pub fn sokolLink(library: *const Library, builder: *std.build.Builder, executable: *std.build.LibExeObjStep) void {
    const sokolBuild = @import("libs/sokol/build.zig");
    const sokol = sokolBuild.buildSokol(builder, executable.target, builder.standardReleaseOptions(), sokolBuild.Backend.auto, "libs/sokol/");
    executable.linkLibrary(sokol);
    const pkg = std.build.Pkg{ .name = library.name, .source = .{ .path = sdkPath("/sokol/src/sokol/sokol.zig") } };
    executable.addPackage(pkg);
}

pub fn build(b: *std.build.Builder) !void {
    var libraryPackages = std.StringHashMap(Library).init(b.allocator);
    try libraryPackages.put("tiny_imageformat", Library{ .link = &tiny_imageformatLink, .name = "tiny_imageformat" });
    try libraryPackages.put("sokol", Library{ .link = &sokolLink, .name = "sokol" });
    try libraryPackages.put("vfile", Library{ .name = "vfile", .path = sdkPath("/vfile/package.zig") });

    hello_world.build(b, libraryPackages);
}
