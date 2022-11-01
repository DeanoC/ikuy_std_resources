const std = @import("std");

pub const Library = struct {
    link: *const fn (lib: *const Library, b: *std.build.Builder, exe: *std.build.LibExeObjStep) anyerror!void,
    name: []const u8,
    path: []const u8 = undefined,
};

pub fn sdkPath(comptime suffix: []const u8) []const u8 {
    return comptime blk: {
        const root_dir = std.fs.path.dirname(@src().file) orelse ".";
        break :blk root_dir ++ "/" ++ suffix;
    };
}
