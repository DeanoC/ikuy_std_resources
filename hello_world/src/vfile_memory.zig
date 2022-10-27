const std = @import("std");
const warn = std.log.warn;
const assert = std.debug.assert;
const VFile = @import("vfile.zig").VFile;
const VFileError = @import("vfile.zig").VFileError;

pub const VFileMemory = struct {
    const MemoryType = VFile.makeFileType("MEM_");

    allocator: ?std.mem.Allocator,
    memory: []u8,
    offset: usize,
    growable: bool,

    vfile: VFile,

    fn setUpFunctionTable() VFile {
        return comptime VFile{
            .fileType = MemoryType,
            .closeFn = close,
            .flushFn = flush,
            .readFn = read,
            .writeFn = write,
            .seekFn = seek,
            .tellFn = tell,
            .byteCountFn = byteCount,
            .nameFn = name,
            .endOfFileFn = endOfFile,
        };
    }

    pub fn initFromBuffer(arg_buffer: []u8) !VFileMemory {
        return VFileMemory{
            .allocator = null,
            .memory = arg_buffer,
            .offset = 0,
            .growable = false,
            .vfile = setUpFunctionTable(),
        };
    }
    pub fn initFromBufferAndOwn(allocator: std.mem.Allocator, buffer: []u8, growable: bool) !VFileMemory {
        return VFileMemory{
            .allocator = allocator,
            .memory = buffer,
            .offset = 0,
            .growable = growable,
            .vfile = setUpFunctionTable(),
        };
    }
    pub fn initFromSize(allocator: std.mem.Allocator, size: usize, growable: bool) !VFileMemory {
        return VFileMemory{
            .allocator = allocator,
            .memory = try allocator.alloc(u8, size),
            .offset = 0,
            .growable = growable,
            .vfile = setUpFunctionTable(),
        };
    }
    pub fn init(allocator: std.mem.Allocator) !VFileMemory {
        return VFileMemory{
            .allocator = allocator,
            .memory = &[_]u8{},
            .offset = 0,
            .growable = true,
            .vfile = setUpFunctionTable(),
        };
    }

    fn close(vfile: *VFile) void {
        assert(vfile.fileType == MemoryType);
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        if (self.allocator) |allocator| allocator.free(self.memory);
    }

    fn flush(_: *VFile) void {}

    fn read(vfile: *VFile, buffer: []u8) anyerror!usize {
        assert(vfile.fileType == MemoryType);
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        if (self.offset + buffer.len > self.memory.len) return VFileError.ReadError;

        const amount_to_read = @min(self.memory.len - self.offset, buffer.len);
        for (self.memory[0..amount_to_read]) |b, i| buffer[i] = b;
        self.offset += amount_to_read;
        return amount_to_read;
    }

    fn write(vfile: *VFile, buffer: []const u8) anyerror!usize {
        assert(vfile.fileType == MemoryType);
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);

        // do we need to grow if so try it
        if (self.offset + buffer.len > self.memory.len) {
            if (self.allocator) |allocator| {
                if(self.growable) self.memory = try allocator.realloc(self.memory, self.offset + buffer.len);
            }
        }
        // after possible growing do we have room?
        if (self.offset + buffer.len > self.memory.len) return VFileError.WriteError;

        const amount_to_write = @min(self.memory.len - self.offset, buffer.len);
        for (buffer[0..amount_to_write]) |b, i| self.memory[self.offset + i] = b;
        self.offset += amount_to_write;
        return amount_to_write;
    }

    fn seek(vfile: *VFile, offset: u64, dir: VFile.SeekDir) anyerror!void {
        assert(vfile.fileType == MemoryType);
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

    fn tell(vfile: *VFile) anyerror!usize {
        assert(vfile.fileType == MemoryType);
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        return self.offset;
    }

    fn byteCount(vfile: *VFile) VFileError!usize {
        assert(vfile.fileType == MemoryType);
        const self = @fieldParentPtr(VFileMemory, "vfile", vfile);
        return self.memory.len;
    }

    fn name(_: *VFile) []const u8 {
        return "MEMORY";
    }

    fn endOfFile(vfile: *VFile) anyerror!bool {
        assert(vfile.fileType == MemoryType);
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

test "comptime array" {
    for (fancy_array) |v, i| {
        try expectEqual(fancy_array[i], v);
    }
}
test "init" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.init(allocator);
    try expectEqual(vfilemem.memory.len, 0);
}

test "initFromBuffer" {
    var buffer = [_]u8{ 0, 1, 2, 3 };
    var vfilemem = try VFileMemory.initFromBuffer(&buffer);
    try expectEqual(vfilemem.memory[0], 0);
    try expectEqual(vfilemem.memory[1], 1);
    try expectEqual(vfilemem.memory[2], 2);
    try expectEqual(vfilemem.memory[3], 3);
}

test "seek vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100, false);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close();
    try expectEqual(10, v.size());
}

test "endOfFule" {
    var buffer = [_]u8{ 0, 1, 2, 3 };
    var vfilemem = try VFileMemory.initFromBuffer(&buffer);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close();
    try expectEqual(try v.endOfFile(), false);
    try v.seek(3, VFile.SeekDir.Begin);
    try expectEqual(try v.endOfFile(), true);
}

test "write vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100, false);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close();
    try expectEqual(try v.write(&fancy_array), 10);
    try expectEqual(vfilemem.offset, 10);
    for (fancy_array) |value, i| {
        try expectEqual(vfilemem.memory[i], value);
    }
}

test "tell vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100, false);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close();
    try expectEqual(try v.write(&fancy_array), 10);
    try expectEqual(try v.tell(), 10);
}

test "seek vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100, false);
    var v: *VFile = &(vfilemem).vfile;
    try expectEqual(try v.write(&fancy_array), 10);
    try v.seek(0, VFile.SeekDir.Begin);
    try expectEqual(try v.tell(), 0);
    try v.seek(10, VFile.SeekDir.Begin);
    try expectEqual(try v.tell(), 10);
    try expectError(
        VFileError.SeekError,
        v.seek(100, VFile.SeekDir.Begin),
    );
    // the above seek will fail so the tell should be same as before
    try expectEqual(try v.tell(), 10);
    try v.seek(0, VFile.SeekDir.Begin);
    try v.seek(10, VFile.SeekDir.Current);
    try expectEqual(try v.tell(), 10);
    try v.seek(10, VFile.SeekDir.Current);
    try expectEqual(try v.tell(), 20);
    try v.seek(0, VFile.SeekDir.End);
    try expectEqual(try v.tell(), 100);
    try v.seek(10, VFile.SeekDir.End);
    try expectEqual(try v.tell(), 90);
}

test "read vfile memory" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.initFromSize(allocator, 100, false);
    var v: *VFile = &(vfilemem).vfile;
    defer v.close();
    try expectEqual(try v.write(&fancy_array), 10);
    try expectEqual(try v.seek(0, VFile.SeekDir.Begin), 0);

    var read10: [10]u8 = undefined;
    try expectEqual(try v.read(&read10), 10);
    try expectEqual(vfilemem.offset, 10);
    for (fancy_array) |value, i| {
        try expectEqual(read10[i], value);
    }
}

test "growablility" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var vfilemem: VFileMemory = try VFileMemory.init(allocator);
    var v: *VFile = &(vfilemem).vfile;

    try expectEqual(v.byteCount(), 0);
    var buffer = [_]u8{ 0, 1, 2, 3 };
    try expectEqual(try v.write(&buffer), 4);
    var dst_buffer = [_]u8 {0} ** 4;
    try expectError(VFileError.ReadError, v.read(&dst_buffer));
    try v.seek(0, VFile.SeekDir.Begin);

    try expectEqual(try v.read(&dst_buffer), 4);
    for (dst_buffer) |value, i| {
        try expectEqual(buffer[i], value);
    }

}
