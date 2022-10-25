const std = @import("std");

pub const Library = struct {
    link: *const fn (lib: *const Library, b: *std.build.Builder, exe: *std.build.LibExeObjStep) void = &basicLink,
    package: std.build.Pkg,
};

pub fn sdkPath(comptime suffix: []const u8) []const u8 {
    if (suffix[0] != '/') @compileError("relToPath requires an absolute path!");
    return comptime blk: {
        const root_dir = std.fs.path.dirname(@src().file) orelse ".";
        break :blk root_dir ++ suffix;
    };
}

fn basicLink(lib: *const Library, _: *std.build.Builder, exe: *std.build.LibExeObjStep) void {
    exe.addPackage(lib.package);
}
