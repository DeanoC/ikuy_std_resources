const std = @import("std");
const warn = std.log.warn;
const vfilefile = @import("vfile").VFileFile;
const String = @import("zig_string").String;
const OpenMode = std.fs.File.OpenMode;
const os = std.os;

const process = std.process;
const print = @import("std").debug.print;

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
var allocator = gpa.allocator();

const tif_bits = @import("formatgen_bits.zig");

const Language = enum {
    c,
    zig,
};

fn printHelp() void {
    print("tiny_image_format_gen LANG DIR\n", .{});
    print("LANG = c | zig\n", .{});
    print("DIR = where to put then generated files\n", .{});
}

pub fn main() !void {
    var args_it = try process.argsWithAllocator(allocator);
    var arg_index: u32 = 0;

    var lingo = Language.c;

    var outputString = String.init(&allocator);
    defer outputString.deinit();

    while (args_it.next()) |arg| {
        // as C first argument is the execution path
        if (arg_index == 1) {
            // c or zig files to generate?
            if (std.mem.eql(u8, arg, "c")) {
                lingo = Language.c;
            } else if (std.mem.eql(u8, arg, "zig")) {
                lingo = Language.zig;
            }
        } else if (arg_index == 2) {
            // the directory for output
            try outputString.concat(arg);
        }
        arg_index = arg_index + 1;
    }
    if (arg_index != 3) {
        printHelp();
        return;
    }
    const cwd = std.fs.cwd();

    // lets see what at the output path
    _ = cwd.statFile(outputString.str()) catch |err|
        switch (err) {
        error.FileNotFound => {
            try cwd.makePath(outputString.str());
        },
        else => {
            warn("ERROR: Output dir {s} has error {}", .{ outputString.str(), err });
            return;
        },
    };
    const stat = try cwd.statFile(outputString.str());
    if (stat.kind != std.fs.File.Kind.Directory) {
        warn("ERROR: output must be a directory", .{});
        return;
    }

    //    switch(lingo) {
    //        Language.c => ,
    //        Language.zig =>,
    //        _ =>,
    //    };

}
