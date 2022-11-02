const std = @import("std");
const Builder = std.build.Builder;
const CrossTarget = @import("std").zig.CrossTarget;
const Mode = std.builtin.Mode;

pub fn sdkPath(comptime suffix: []const u8) []const u8 {
    if (suffix[0] != '/') @compileError("relToPath requires an absolute path!");
    return comptime blk: {
        const root_dir = std.fs.path.dirname(@src().file) orelse ".";
        break :blk root_dir ++ suffix;
    };
}

pub const tiny_imageformat = @cImport({
    @cInclude(sdkPath("/include/tiny_imageformat/tinyimageformat_base.h"));
    @cInclude(sdkPath("/include/tiny_imageformat/tinyimageformat_query.h"));
    @cInclude(sdkPath("/include/tiny_imageformat/tinyimageformat_encode.h"));
    //    @cInclude(sdkPath("/include/tiny_imageformat/tinyimageformat_decode.h"));
});

pub fn buildFormatGen(b: *Builder, target: CrossTarget, mode: Mode, comptime _: []const u8) *std.build.LibExeObjStep {
    var exe = b.addExecutable("tiny_image_format_gen", b.pathFromRoot("libs/tiny_image_format/src/formatgen.zig"));
    exe.setTarget(target);
    exe.setBuildMode(mode);
    return exe;
}
