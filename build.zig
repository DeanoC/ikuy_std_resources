
// DO NOT EDIT - Autogenerated by Overlord
const std = @import("std");
const Library = @import("libs/library.zig").Library;
const sdkPath = @import("libs/library.zig").sdkPath;

const sokol = @import(s"libs/sokol/build.zig");const vfile = @import(s"");
const hello_world = @import("hello_world/ikuy_build.zig");

pub fn sokolLink(_: *const Library, builder: *std.build.Builder, executable: *std.build.LibExeObjStep) void {
    const sokol = sokolBuild.buildSokol(builder, executable.target, builder.standardReleaseOptions(), sokolBuild.Backend.auto, "libs/sokol/");
    executable.linkLibrary(sokol);

}
pub fn vfileLink(_: *const Library, _: *std.build.Builder, _: *std.build.LibExeObjStep) void {

}


pub fn build(builder: *std.build.Builder) !void {
  var libraryPackages = std.StringHashMap(Library).init(builder.allocator);
  try libraryPackages.put("sokol", Library{ .link = &sokolLink, .name = "sokol" });
  try libraryPackages.put("vfile", Library{ .link = &vfileLink, .name = "vfile" });

  hello_world.build(builder, libraryPackages);
}
