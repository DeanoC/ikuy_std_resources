const std = @import("std");
const sdl = @import("sdl2");
const VFile = @import("vfile.zig").VFile;
const VFileMemory = @import("vfile_memory.zig").VFileMemory;

pub fn main() !void {
    try sdl.init(.{
        .video = true,
        .events = true,
        .audio = true,
    });
    defer sdl.quit();
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100, false);
    var v: *VFile = &(vfilemem).vfile;
    //    v.write()
    defer v.close();

    var window = try sdl.createWindow(
        "SDL2 Wrapper Demo",
        .{ .centered = {} },
        .{ .centered = {} },
        640,
        480,
        .{ .vis = .shown },
    );
    defer window.destroy();

    var renderer = try sdl.createRenderer(window, null, .{ .accelerated = true });
    defer renderer.destroy();

    mainLoop: while (true) {
        while (sdl.pollEvent()) |ev| {
            switch (ev) {
                .quit => break :mainLoop,
                else => {},
            }
        }

        try renderer.setColorRGB(0xF7, 0xA4, 0x1D);
        try renderer.clear();

        renderer.present();
    }
}
