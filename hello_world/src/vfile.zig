pub const VFileError = error{
    InitError,
    ReadError,
    WriteError,
    SeekError,
};

pub const VFile = struct {
    pub const SeekDir = enum { Begin, Current, End };
    
    fileType: u32,
    closeFn: *const fn (*VFile) void,
    flushFn: *const fn (self: *VFile) void,
    readFn: *const fn (vfile: *VFile, buffer: []u8) anyerror!usize,
    writeFn: *const fn (vfile: *VFile, buffer: []const u8) anyerror!usize,
    seekFn: *const fn (vfile: *VFile, offset: usize, origin: SeekDir) anyerror!void,
    tellFn: *const fn (vfile: *VFile) anyerror!usize,
    byteCountFn: *const fn (vfile: *VFile) anyerror!usize,
    nameFn: *const fn (vfile: *VFile) []const u8,
    endOfFileFn: *const fn (vfile: *VFile) anyerror!bool,

    pub fn makeFileType(id: *const [4]u8 ) u32 {
        return (@intCast(u32, id[0]) << 24) | (@intCast(u32, id[1]) << 16) | (@intCast(u32, id[2]) << 8) | (@intCast(u32, id[3]) << 0);
    }   
    pub fn fromFileType(id: i32 ) [4]u8 {
        return [4]u8 { ((id >> 24) & 0xFF), ((id >> 16) & 0xFF), ((id >> 8) & 0xFF), ((id >> 0) & 0xFF) };
    }
    
    pub fn close(iface: *VFile) void {
        return iface.closeFn(iface);
    }
    pub fn flush(iface: *VFile) void {
        return iface.flushFn(iface);
    }
    pub fn read(iface: *VFile,  buffer: []u8) anyerror!usize {
        return iface.readFn(iface, buffer);
    }
    pub fn write(iface: *VFile, buffer: []const u8) anyerror!usize {
        return iface.writeFn(iface, buffer);
    }
    pub fn seek(iface: *VFile, offset: usize, origin: SeekDir) anyerror!void {
        return iface.seekFn(iface, offset, origin);
    }
    pub fn tell(iface: *VFile) anyerror!usize {
        return iface.tellFn(iface);
    }
    pub fn byteCount(iface: *VFile) anyerror!usize {
        return iface.byteCountFn(iface);
    }
    pub fn name(iface: *VFile) []const u8 {
        return iface.nameFn(iface);
    }
    pub fn endOfFile(iface: *VFile) anyerror!bool {
        return iface.endOfFileFn(iface);
    }


};
