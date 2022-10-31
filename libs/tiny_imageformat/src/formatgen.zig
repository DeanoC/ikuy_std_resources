const std = @import("std");
const warn = std.log.warn;
const File = std.fs.File;
const Dir = std.fs.Dir;

pub fn main() !void {
    // allocate a large enough buffer to store the cwd
    var buf: [std.fs.MAX_PATH_BYTES]u8 = undefined;

    // getcwd writes the path of the cwd into buf and returns a slice of buf with the len of cwd
    const cwd = try std.os.getcwd(&buf);

    // print out the cwd
    warn("{s}", .{cwd});
}
