pub const VFileError = error{
    InitError,
    ReadError,
    WriteError,
    SeekError,
};

pub const VFile = struct {
    pub const SeekDir = enum { Begin, Current, End };
    fileType: u32,
    close: *const fn (*VFile) void,
    flush: *const fn (self: *VFile) void,
    read: *const fn (vfile: *VFile, buffer: []u8) VFileError!usize,
    write: *const fn (vfile: *VFile, buffer: []const u8) VFileError!usize,
    seek: *const fn (vfile: *VFile, offset: usize, origin: SeekDir) VFileError!void,
    tell: *const fn (vfile: *VFile) VFileError!usize,
    size: *const fn (vfile: *VFile) VFileError!usize,
    name: *const fn (vfile: *VFile) []const u8,
    endOfFile: *const fn (vfile: *VFile) VFileError!bool,
};
