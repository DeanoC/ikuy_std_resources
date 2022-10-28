const std = @import("std");
const sdl = @import("sdl2");

pub fn main() !void {
    try sdl.init(.{
        .video = true,
        .events = true,
        .audio = true,
    });
    defer sdl.quit();

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
