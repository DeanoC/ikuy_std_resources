const std = @import("std");
const warn = std.log.warn;
const assert = std.debug.assert;
const VFile = @import("vfile.zig").VFile;
const VFileError = @import("vfile.zig").VFileError;

pub const VFileMemory = struct {
    const MemoryType = 1;

    allocator: ?std.mem.Allocator,
    memory: []u8,
    offset: usize,

    vfile: VFile,

    fn setUpFunctionTable() VFile {
        return comptime VFile{
            .fileType = MemoryType,
            .close = close,
            .flush = flush,
            .read = read,
            .write = write,
            .seek = seek,
            .tell = tell,
            .size = size,
            .name = name,
            .endOfFile = endOfFile,
        };
    }

    pub fn initFromBuffer(arg_buffer: []u8) !VFileMemory {
        return VFileMemory{
            .allocator = null,
            .memory = arg_buffer,
            .offset = 0,
            .vfile = setUpFunctionTable(),
        };
    }
    pub fn initFromBufferAndOwn(arg_allocator: std.mem.Allocator, arg_buffer: []u8) !VFileMemory {
        return VFileMemory{
            .allocator = arg_allocator,
            .memory = arg_buffer,
            .offset = 0,
            .vfile = setUpFunctionTable(),
        };
    }
    pub fn initFromSize(arg_allocator: std.mem.Allocator, arg_size: usize) !VFileMemory {
        return VFileMemory{
            .allocator = arg_allocator,
            .memory = try arg_allocator.alloc(u8, arg_size),
            .offset = 0,
            .vfile = setUpFunctionTable(),
        };
    }

    fn close(vfile: *VFile) void {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        if (self.allocator) |allocator| allocator.free(self.memory);
    }

    fn flush(_: *VFile) void {}

    fn read(vfile: *VFile, buffer: []u8) VFileError!usize {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        if (self.offset >= self.memory.len) return VFileError.ReadError;

        const amount_to_read = @min(self.memory.len - self.offset, buffer.len);
        for (self.memory[0..amount_to_read]) |b, i| buffer[i] = b;
        self.offset += amount_to_read;
        return amount_to_read;
    }

    fn write(vfile: *VFile, buffer: []const u8) VFileError!usize {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        if (self.offset >= self.memory.len) return VFileError.WriteError;

        const amount_to_write = @min(self.memory.len - self.offset, buffer.len);
        for (buffer[0..amount_to_write]) |b, i| self.memory[self.offset + i] = b;
        self.offset += amount_to_write;
        return amount_to_write;
    }

    fn seek(vfile: *VFile, offset: u64, dir: VFile.SeekDir) VFileError!void {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        switch (dir) {
            VFile.SeekDir.Begin => {
                if (offset >= self.memory.len) return VFileError.SeekError;
                self.offset = offset;
            },
            VFile.SeekDir.Current => {
                if (self.offset + offset > self.memory.len) return VFileError.SeekError;
                self.offset = self.offset + offset;
            },
            VFile.SeekDir.End => {
                if (offset > self.memory.len) return VFileError.SeekError;
                self.offset = self.memory.len - offset;
            },
        }
    }

    fn tell(vfile: *VFile) VFileError!usize {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        return self.offset;
    }

    fn size(vfile: *VFile) VFileError!usize {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        return self.memory.len;
    }

    fn name(_: *VFile) []const u8 {
        return "MEMORY";
    }

    fn endOfFile(vfile: *VFile) VFileError!bool {
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        return self.offset >= self.memory.len - 1;
    }
};

const expect = std.testing.expect;
const expectEqual = std.testing.expectEqual;
const expectError = std.testing.expectError;

var fancy_array = init: {
    var initial_value: [10]u8 = undefined;
    for (initial_value) |*pt, i| {
        pt.* = i;
    }
    break :init initial_value;
};

test "test comptime array" {
    for (fancy_array) |v, i| {
        try expectEqual(fancy_array[i], v);
    }
}

test "test initFromBuffer" {
    var buffer = [_]u8{ 0, 1, 2, 3 };
    var slice = &buffer;
    var vfilemem = try VFileMemory.initFromBuffer(slice);
    try expectEqual(vfilemem.memory[0], 0);
    try expectEqual(vfilemem.memory[1], 1);
    try expectEqual(vfilemem.memory[2], 2);
    try expectEqual(vfilemem.memory[3], 3);
}

test "seek vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close(v);
    try expectEqual(10, v.size());
}

test "test endOfFule" {
    var buffer = [_]u8{ 0, 1, 2, 3 };
    var slice = &buffer;
    var vfilemem = try VFileMemory.initFromBuffer(slice);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close(v);
    try expectEqual(try v.endOfFile(v), false);
    try v.seek(v, 3, VFile.SeekDir.Begin);
    try expectEqual(try v.endOfFile(v), true);
}

test "write vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close(v);
    try expectEqual(try v.write(v, &fancy_array), 10);
    try expectEqual(vfilemem.offset, 10);
    for (fancy_array) |value, i| {
        try expectEqual(vfilemem.memory[i], value);
    }
}

test "tell vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close(v);
    try expectEqual(try v.write(v, &fancy_array), 10);
    try expectEqual(try v.tell(v), 10);
}

test "seek vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100);
    var v: *VFile = &(vfilemem).vfile;
    try expectEqual(try v.write(v, &fancy_array), 10);
    try v.seek(v, 0, VFile.SeekDir.Begin);
    try expectEqual(try v.tell(v), 0);
    try v.seek(v, 10, VFile.SeekDir.Begin);
    try expectEqual(try v.tell(v), 10);
    try expectError(
        VFileError.SeekError,
        v.seek(v, 100, VFile.SeekDir.Begin),
    );
    // the above seek will fail so the tell should be same as before
    try expectEqual(try v.tell(v), 10);
    try v.seek(v, 0, VFile.SeekDir.Begin);
    try v.seek(v, 10, VFile.SeekDir.Current);
    try expectEqual(try v.tell(v), 10);
    try v.seek(v, 10, VFile.SeekDir.Current);
    try expectEqual(try v.tell(v), 20);
    try v.seek(v, 0, VFile.SeekDir.End);
    try expectEqual(try v.tell(v), 100);
    try v.seek(v, 10, VFile.SeekDir.End);
    try expectEqual(try v.tell(v), 90);
}

test "read vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close(v);
    try expectEqual(try v.write(v, &fancy_array), 10);
    try expectEqual(try v.seek(v, 0, VFile.SeekDir.Begin), 0);

    var read10: [10]u8 = undefined;
    try expectEqual(try v.read(v, &read10), 10);
    try expectEqual(vfilemem.offset, 10);
    for (fancy_array) |value, i| {
        try expectEqual(read10[i], value);
    }
}
