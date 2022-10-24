pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const int_least64_t = i64;
pub const uint_least64_t = u64;
pub const int_fast64_t = i64;
pub const uint_fast64_t = u64;
pub const int_least32_t = i32;
pub const uint_least32_t = u32;
pub const int_fast32_t = i32;
pub const uint_fast32_t = u32;
pub const int_least16_t = i16;
pub const uint_least16_t = u16;
pub const int_fast16_t = i16;
pub const uint_fast16_t = u16;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const float_t = f32;
pub const double_t = f64;
pub const uintptr_lo_t = u32;
pub const uintptr_all_t = u64;
pub extern fn memcmp(a: ?*const anyopaque, b: ?*const anyopaque, num: c_ulong) c_int;
pub extern fn memset(destination: ?*anyopaque, c: c_int, num: c_ulong) ?*anyopaque;
pub extern fn memcpy(destination: ?*anyopaque, source: ?*const anyopaque, bytes: c_ulong) ?*anyopaque;
pub extern fn memmove(destination: ?*anyopaque, source: ?*const anyopaque, bytes: c_ulong) ?*anyopaque;
pub inline fn strlen(str: [*c]const u8) c_ulong {
    var p: [*c]const u8 = str;
    while (p.* != 0) {
        p += 1;
    }
    return @bitCast(c_ulong, @divExact(@bitCast(c_long, @ptrToInt(p) -% @ptrToInt(str)), @sizeOf(u8)));
}
pub extern fn strncmp(a: [*c]const u8, b: [*c]const u8, bytes: c_ulong) c_int;
pub extern fn srand(seed: c_uint) void;
pub extern fn rand() c_int;
pub const utf8_int32_t = i32;
pub const utf8_int8_t = u8;
pub export fn utf8casecmp(arg_src1: [*c]const utf8_int8_t, arg_src2: [*c]const utf8_int8_t) c_int {
    var src1 = arg_src1;
    var src2 = arg_src2;
    var src1_lwr_cp: utf8_int32_t = 0;
    var src2_lwr_cp: utf8_int32_t = 0;
    var src1_upr_cp: utf8_int32_t = 0;
    var src2_upr_cp: utf8_int32_t = 0;
    var src1_orig_cp: utf8_int32_t = 0;
    var src2_orig_cp: utf8_int32_t = 0;
    while (true) {
        src1 = utf8codepoint(src1, &src1_orig_cp);
        src2 = utf8codepoint(src2, &src2_orig_cp);
        src1_lwr_cp = utf8lwrcodepoint(src1_orig_cp);
        src2_lwr_cp = utf8lwrcodepoint(src2_orig_cp);
        src1_upr_cp = utf8uprcodepoint(src1_orig_cp);
        src2_upr_cp = utf8uprcodepoint(src2_orig_cp);
        if ((@as(c_int, 0) == src1_orig_cp) and (@as(c_int, 0) == src2_orig_cp)) {
            return 0;
        } else if ((src1_lwr_cp == src2_lwr_cp) or (src1_upr_cp == src2_upr_cp)) {
            continue;
        }
        return src1_lwr_cp - src2_lwr_cp;
    }
    return 0;
}
pub export fn utf8cat(noalias arg_dst: [*c]utf8_int8_t, noalias arg_src: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var dst = arg_dst;
    var src = arg_src;
    var d: [*c]utf8_int8_t = dst;
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, d.*))) {
        d += 1;
    }
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
        (blk: {
            const ref = &d;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &src;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    d.* = '\x00';
    return dst;
}
pub export fn utf8chr(arg_src: [*c]const utf8_int8_t, arg_chr: utf8_int32_t) [*c]utf8_int8_t {
    var src = arg_src;
    var chr = arg_chr;
    var c: [5]utf8_int8_t = [5]utf8_int8_t{
        '\x00',
        '\x00',
        '\x00',
        '\x00',
        '\x00',
    };
    if (@as(c_int, 0) == chr) {
        while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
            src += 1;
        }
        return @intToPtr([*c]utf8_int8_t, @ptrToInt(src));
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294967168)) & chr)) {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, chr));
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294965248)) & chr)) {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 192) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 6)))))));
        c[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294901760)) & chr)) {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 224) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 12)))))));
        c[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 6)) & @as(c_int, 63)))))));
        c[@intCast(c_uint, @as(c_int, 2))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
    } else {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 240) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 18)))))));
        c[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 12)) & @as(c_int, 63)))))));
        c[@intCast(c_uint, @as(c_int, 2))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 6)) & @as(c_int, 63)))))));
        c[@intCast(c_uint, @as(c_int, 3))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
    }
    return utf8str(src, @ptrCast([*c]utf8_int8_t, @alignCast(@import("std").meta.alignment([*c]utf8_int8_t), &c)));
}
pub export fn utf8cmp(arg_src1: [*c]const utf8_int8_t, arg_src2: [*c]const utf8_int8_t) c_int {
    var src1 = arg_src1;
    var src2 = arg_src2;
    while ((@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src1.*))) or (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src2.*)))) {
        if (@bitCast(c_int, @as(c_uint, src1.*)) < @bitCast(c_int, @as(c_uint, src2.*))) {
            return -@as(c_int, 1);
        } else if (@bitCast(c_int, @as(c_uint, src1.*)) > @bitCast(c_int, @as(c_uint, src2.*))) {
            return 1;
        }
        src1 += 1;
        src2 += 1;
    }
    return 0;
}
pub export fn utf8cpy(noalias arg_dst: [*c]utf8_int8_t, noalias arg_src: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var dst = arg_dst;
    var src = arg_src;
    var d: [*c]utf8_int8_t = dst;
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
        (blk: {
            const ref = &d;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &src;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    d.* = '\x00';
    return dst;
}
pub export fn utf8cspn(arg_src: [*c]const utf8_int8_t, arg_reject: [*c]const utf8_int8_t) usize {
    var src = arg_src;
    var reject = arg_reject;
    var chars: usize = 0;
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
        var r: [*c]const utf8_int8_t = reject;
        var offset: usize = 0;
        while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, r.*))) {
            if ((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, r.*)))) and (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) < offset)) {
                return chars;
            } else {
                if (@bitCast(c_int, @as(c_uint, r.*)) == @bitCast(c_int, @as(c_uint, src[offset]))) {
                    offset +%= 1;
                    r += 1;
                } else {
                    while (true) {
                        r += 1;
                        if (!(@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, r.*))))) break;
                    }
                    offset = 0;
                }
            }
        }
        if (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) < offset) {
            return chars;
        }
        while (true) {
            src += 1;
            if (!(@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, src.*))))) break;
        }
        chars +%= 1;
    }
    return chars;
}
pub export fn utf8dup(arg_src: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var src = arg_src;
    return utf8dup_ex(src, null, null);
}
pub export fn utf8len(arg_str: [*c]const utf8_int8_t) usize {
    var str = arg_str;
    return utf8nlen(str, @as(c_ulong, 18446744073709551615));
}
pub export fn utf8nlen(arg_str: [*c]const utf8_int8_t, arg_n: usize) usize {
    var str = arg_str;
    var n = arg_n;
    var t: [*c]const utf8_int8_t = str;
    var length: usize = 0;
    while ((@bitCast(usize, @divExact(@bitCast(c_long, @ptrToInt(str) -% @ptrToInt(t)), @sizeOf(utf8_int8_t))) < n) and (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, str.*)))) {
        if (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, str.*)))) {
            str += @bitCast(usize, @intCast(isize, @as(c_int, 4)));
        } else if (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, str.*)))) {
            str += @bitCast(usize, @intCast(isize, @as(c_int, 3)));
        } else if (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, str.*)))) {
            str += @bitCast(usize, @intCast(isize, @as(c_int, 2)));
        } else {
            str += @bitCast(usize, @intCast(isize, @as(c_int, 1)));
        }
        length +%= 1;
    }
    if (@bitCast(usize, @divExact(@bitCast(c_long, @ptrToInt(str) -% @ptrToInt(t)), @sizeOf(utf8_int8_t))) > n) {
        length -%= 1;
    }
    return length;
}
pub export fn utf8ncasecmp(arg_src1: [*c]const utf8_int8_t, arg_src2: [*c]const utf8_int8_t, arg_n: usize) c_int {
    var src1 = arg_src1;
    var src2 = arg_src2;
    var n = arg_n;
    var src1_lwr_cp: utf8_int32_t = 0;
    var src2_lwr_cp: utf8_int32_t = 0;
    var src1_upr_cp: utf8_int32_t = 0;
    var src2_upr_cp: utf8_int32_t = 0;
    var src1_orig_cp: utf8_int32_t = 0;
    var src2_orig_cp: utf8_int32_t = 0;
    while (true) {
        const s1: [*c]const utf8_int8_t = src1;
        const s2: [*c]const utf8_int8_t = src2;
        if (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) == n) {
            return 0;
        }
        if ((@bitCast(c_ulong, @as(c_long, @as(c_int, 1))) == n) and ((@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, s1.*)))) or (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, s2.*)))))) {
            const c1: utf8_int32_t = @as(c_int, 224) & @bitCast(c_int, @as(c_uint, s1.*));
            const c2: utf8_int32_t = @as(c_int, 224) & @bitCast(c_int, @as(c_uint, s2.*));
            if (c1 < c2) {
                return c1 - c2;
            } else {
                return 0;
            }
        }
        if ((@bitCast(c_ulong, @as(c_long, @as(c_int, 2))) >= n) and ((@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, s1.*)))) or (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, s2.*)))))) {
            const c1: utf8_int32_t = @as(c_int, 240) & @bitCast(c_int, @as(c_uint, s1.*));
            const c2: utf8_int32_t = @as(c_int, 240) & @bitCast(c_int, @as(c_uint, s2.*));
            if (c1 < c2) {
                return c1 - c2;
            } else {
                return 0;
            }
        }
        if ((@bitCast(c_ulong, @as(c_long, @as(c_int, 3))) >= n) and ((@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, s1.*)))) or (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, s2.*)))))) {
            const c1: utf8_int32_t = @as(c_int, 248) & @bitCast(c_int, @as(c_uint, s1.*));
            const c2: utf8_int32_t = @as(c_int, 248) & @bitCast(c_int, @as(c_uint, s2.*));
            if (c1 < c2) {
                return c1 - c2;
            } else {
                return 0;
            }
        }
        src1 = utf8codepoint(src1, &src1_orig_cp);
        src2 = utf8codepoint(src2, &src2_orig_cp);
        n -%= utf8codepointsize(src1_orig_cp);
        src1_lwr_cp = utf8lwrcodepoint(src1_orig_cp);
        src2_lwr_cp = utf8lwrcodepoint(src2_orig_cp);
        src1_upr_cp = utf8uprcodepoint(src1_orig_cp);
        src2_upr_cp = utf8uprcodepoint(src2_orig_cp);
        if ((@as(c_int, 0) == src1_orig_cp) and (@as(c_int, 0) == src2_orig_cp)) {
            return 0;
        } else if ((src1_lwr_cp == src2_lwr_cp) or (src1_upr_cp == src2_upr_cp)) {
            continue;
        }
        return src1_lwr_cp - src2_lwr_cp;
    }
    return 0;
}
pub export fn utf8ncat(noalias arg_dst: [*c]utf8_int8_t, noalias arg_src: [*c]const utf8_int8_t, arg_n: usize) [*c]utf8_int8_t {
    var dst = arg_dst;
    var src = arg_src;
    var n = arg_n;
    var d: [*c]utf8_int8_t = dst;
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, d.*))) {
        d += 1;
    }
    while (true) {
        (blk: {
            const ref = &d;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &src;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        if (!((@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) and (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) != (blk: {
            const ref = &n;
            ref.* -%= 1;
            break :blk ref.*;
        })))) break;
    }
    d.* = '\x00';
    return dst;
}
pub export fn utf8ncmp(arg_src1: [*c]const utf8_int8_t, arg_src2: [*c]const utf8_int8_t, arg_n: usize) c_int {
    var src1 = arg_src1;
    var src2 = arg_src2;
    var n = arg_n;
    while ((@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) != (blk: {
        const ref = &n;
        const tmp = ref.*;
        ref.* -%= 1;
        break :blk tmp;
    })) and ((@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src1.*))) or (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src2.*))))) {
        if (@bitCast(c_int, @as(c_uint, src1.*)) < @bitCast(c_int, @as(c_uint, src2.*))) {
            return -@as(c_int, 1);
        } else if (@bitCast(c_int, @as(c_uint, src1.*)) > @bitCast(c_int, @as(c_uint, src2.*))) {
            return 1;
        }
        src1 += 1;
        src2 += 1;
    }
    return 0;
}
pub export fn utf8ncpy(noalias arg_dst: [*c]utf8_int8_t, noalias arg_src: [*c]const utf8_int8_t, arg_n: usize) [*c]utf8_int8_t {
    var dst = arg_dst;
    var src = arg_src;
    var n = arg_n;
    var d: [*c]utf8_int8_t = dst;
    var index: usize = 0;
    var check_index: usize = 0;
    if (n == @bitCast(c_ulong, @as(c_long, @as(c_int, 0)))) {
        return dst;
    }
    {
        index = 0;
        while (index < n) : (index +%= 1) {
            d[index] = src[index];
            if (@as(c_int, '\x00') == @bitCast(c_int, @as(c_uint, src[index]))) {
                break;
            }
        }
    }
    {
        check_index = index -% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        while ((check_index > @bitCast(c_ulong, @as(c_long, @as(c_int, 0)))) and (@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, d[check_index]))))) : (check_index -%= 1) {}
    }
    if ((check_index < index) and ((index -% check_index) < utf8codepointsize(@bitCast(utf8_int32_t, @as(c_uint, d[check_index]))))) {
        index = check_index;
    }
    while (index < n) : (index +%= 1) {
        d[index] = 0;
    }
    return dst;
}
pub export fn utf8ndup(arg_src: [*c]const utf8_int8_t, arg_n: usize) [*c]utf8_int8_t {
    var src = arg_src;
    var n = arg_n;
    return utf8ndup_ex(src, n, null, null);
}
pub export fn utf8pbrk(arg_str: [*c]const utf8_int8_t, arg_accept: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var str = arg_str;
    var accept = arg_accept;
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, str.*))) {
        var a: [*c]const utf8_int8_t = accept;
        var offset: usize = 0;
        while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, a.*))) {
            if ((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, a.*)))) and (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) < offset)) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            } else {
                if (@bitCast(c_int, @as(c_uint, a.*)) == @bitCast(c_int, @as(c_uint, str[offset]))) {
                    offset +%= 1;
                    a += 1;
                } else {
                    while (true) {
                        a += 1;
                        if (!(@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, a.*))))) break;
                    }
                    offset = 0;
                }
            }
        }
        if (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) < offset) {
            return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
        }
        while (true) {
            str += 1;
            if (!(@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str.*))))) break;
        }
    }
    return null;
}
pub export fn utf8rchr(arg_src: [*c]const utf8_int8_t, arg_chr: c_int) [*c]utf8_int8_t {
    var src = arg_src;
    var chr = arg_chr;
    var match: [*c]utf8_int8_t = null;
    var c: [5]utf8_int8_t = [5]utf8_int8_t{
        '\x00',
        '\x00',
        '\x00',
        '\x00',
        '\x00',
    };
    if (@as(c_int, 0) == chr) {
        while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
            src += 1;
        }
        return @intToPtr([*c]utf8_int8_t, @ptrToInt(src));
    } else if (@as(c_int, 0) == (@bitCast(c_int, @as(c_uint, 4294967168)) & chr)) {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, chr));
    } else if (@as(c_int, 0) == (@bitCast(c_int, @as(c_uint, 4294965248)) & chr)) {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 192) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr >> @intCast(@import("std").math.Log2Int(c_int), 6)))))));
        c[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
    } else if (@as(c_int, 0) == (@bitCast(c_int, @as(c_uint, 4294901760)) & chr)) {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 224) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr >> @intCast(@import("std").math.Log2Int(c_int), 12)))))));
        c[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(c_int), 6)) & @as(c_int, 63)))))));
        c[@intCast(c_uint, @as(c_int, 2))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
    } else {
        c[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 240) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr >> @intCast(@import("std").math.Log2Int(c_int), 18)))))));
        c[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(c_int), 12)) & @as(c_int, 63)))))));
        c[@intCast(c_uint, @as(c_int, 2))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(c_int), 6)) & @as(c_int, 63)))))));
        c[@intCast(c_uint, @as(c_int, 3))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
    }
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
        var offset: usize = 0;
        while (@bitCast(c_int, @as(c_uint, src[offset])) == @bitCast(c_int, @as(c_uint, c[offset]))) {
            offset +%= 1;
        }
        if (@as(c_int, '\x00') == @bitCast(c_int, @as(c_uint, c[offset]))) {
            match = @intToPtr([*c]utf8_int8_t, @ptrToInt(src));
            src += offset;
        } else {
            src += offset;
            if (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
                while (true) {
                    src += 1;
                    if (!(@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, src.*))))) break;
                }
            }
        }
    }
    return match;
}
pub export fn utf8size(arg_str: [*c]const utf8_int8_t) usize {
    var str = arg_str;
    return utf8size_lazy(str) +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
}
pub export fn utf8size_lazy(arg_str: [*c]const utf8_int8_t) usize {
    var str = arg_str;
    return utf8nsize_lazy(str, @as(c_ulong, 18446744073709551615));
}
pub export fn utf8nsize_lazy(arg_str: [*c]const utf8_int8_t, arg_n: usize) usize {
    var str = arg_str;
    var n = arg_n;
    var size: usize = 0;
    while ((size < n) and (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, str[size])))) {
        size +%= 1;
    }
    return size;
}
pub export fn utf8spn(arg_src: [*c]const utf8_int8_t, arg_accept: [*c]const utf8_int8_t) usize {
    var src = arg_src;
    var accept = arg_accept;
    var chars: usize = 0;
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src.*))) {
        var a: [*c]const utf8_int8_t = accept;
        var offset: usize = 0;
        while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, a.*))) {
            if ((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, a.*)))) and (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) < offset)) {
                chars +%= 1;
                src += offset;
                offset = 0;
                break;
            } else {
                if (@bitCast(c_int, @as(c_uint, a.*)) == @bitCast(c_int, @as(c_uint, src[offset]))) {
                    offset +%= 1;
                    a += 1;
                } else {
                    while (true) {
                        a += 1;
                        if (!(@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, a.*))))) break;
                    }
                    offset = 0;
                }
            }
        }
        if (@bitCast(c_ulong, @as(c_long, @as(c_int, 0))) < offset) {
            chars +%= 1;
            src += offset;
            continue;
        }
        if (@as(c_int, '\x00') == @bitCast(c_int, @as(c_uint, a.*))) {
            return chars;
        }
    }
    return chars;
}
pub export fn utf8str(arg_haystack: [*c]const utf8_int8_t, arg_needle: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var haystack = arg_haystack;
    var needle = arg_needle;
    var throwaway_codepoint: utf8_int32_t = 0;
    if (@as(c_int, '\x00') == @bitCast(c_int, @as(c_uint, needle.*))) {
        return @intToPtr([*c]utf8_int8_t, @ptrToInt(haystack));
    }
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, haystack.*))) {
        var maybeMatch: [*c]const utf8_int8_t = haystack;
        var n: [*c]const utf8_int8_t = needle;
        while ((@bitCast(c_int, @as(c_uint, haystack.*)) == @bitCast(c_int, @as(c_uint, n.*))) and ((@bitCast(c_int, @as(c_uint, haystack.*)) != @as(c_int, '\x00')) and (@bitCast(c_int, @as(c_uint, n.*)) != @as(c_int, '\x00')))) {
            n += 1;
            haystack += 1;
        }
        if (@as(c_int, '\x00') == @bitCast(c_int, @as(c_uint, n.*))) {
            return @intToPtr([*c]utf8_int8_t, @ptrToInt(maybeMatch));
        } else {
            haystack = utf8codepoint(maybeMatch, &throwaway_codepoint);
        }
    }
    return null;
}
pub export fn utf8casestr(arg_haystack: [*c]const utf8_int8_t, arg_needle: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var haystack = arg_haystack;
    var needle = arg_needle;
    if (@as(c_int, '\x00') == @bitCast(c_int, @as(c_uint, needle.*))) {
        return @intToPtr([*c]utf8_int8_t, @ptrToInt(haystack));
    }
    while (true) {
        var maybeMatch: [*c]const utf8_int8_t = haystack;
        var n: [*c]const utf8_int8_t = needle;
        var h_cp: utf8_int32_t = 0;
        var n_cp: utf8_int32_t = 0;
        var nextH: [*c]const utf8_int8_t = blk: {
            const tmp = utf8codepoint(haystack, &h_cp);
            haystack = tmp;
            break :blk tmp;
        };
        n = utf8codepoint(n, &n_cp);
        while ((@as(c_int, 0) != h_cp) and (@as(c_int, 0) != n_cp)) {
            h_cp = utf8lwrcodepoint(h_cp);
            n_cp = utf8lwrcodepoint(n_cp);
            if (h_cp != n_cp) {
                break;
            }
            haystack = utf8codepoint(haystack, &h_cp);
            n = utf8codepoint(n, &n_cp);
        }
        if (@as(c_int, 0) == n_cp) {
            return @intToPtr([*c]utf8_int8_t, @ptrToInt(maybeMatch));
        }
        if (@as(c_int, 0) == h_cp) {
            return null;
        }
        haystack = nextH;
    }
    return null;
}
pub export fn utf8valid(arg_str: [*c]const utf8_int8_t) [*c]utf8_int8_t {
    var str = arg_str;
    return utf8nvalid(str, @as(c_ulong, 18446744073709551615));
}
pub export fn utf8nvalid(arg_str: [*c]const utf8_int8_t, arg_n: usize) [*c]utf8_int8_t {
    var str = arg_str;
    var n = arg_n;
    var t: [*c]const utf8_int8_t = str;
    var consumed: usize = 0;
    var remained: usize = 0;
    while ((blk: {
        _ = blk_1: {
            const tmp = @bitCast(usize, @divExact(@bitCast(c_long, @ptrToInt(str) -% @ptrToInt(t)), @sizeOf(utf8_int8_t)));
            consumed = tmp;
            break :blk_1 tmp;
        };
        break :blk (consumed < n) and (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, str.*)));
    }) != 0) {
        remained = n -% consumed;
        if (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, str.*)))) {
            if (remained < @bitCast(c_ulong, @as(c_long, @as(c_int, 4)))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if (((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))])))) or (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 2))]))))) or (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 3))]))))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if (@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 4))])))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if ((@as(c_int, 0) == (@as(c_int, 7) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) and (@as(c_int, 0) == (@as(c_int, 48) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))]))))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            str += @bitCast(usize, @intCast(isize, @as(c_int, 4)));
        } else if (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, str.*)))) {
            if (remained < @bitCast(c_ulong, @as(c_long, @as(c_int, 3)))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if ((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))])))) or (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 2))]))))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if (@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 3))])))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if ((@as(c_int, 0) == (@as(c_int, 15) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) and (@as(c_int, 0) == (@as(c_int, 32) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))]))))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            str += @bitCast(usize, @intCast(isize, @as(c_int, 3)));
        } else if (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, str.*)))) {
            if (remained < @bitCast(c_ulong, @as(c_long, @as(c_int, 2)))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))])))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if (@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 2))])))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            if (@as(c_int, 0) == (@as(c_int, 30) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
                return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
            }
            str += @bitCast(usize, @intCast(isize, @as(c_int, 2)));
        } else if (@as(c_int, 0) == (@as(c_int, 128) & @bitCast(c_int, @as(c_uint, str.*)))) {
            str += @bitCast(usize, @intCast(isize, @as(c_int, 1)));
        } else {
            return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
        }
    }
    return null;
}
pub export fn utf8makevalid(arg_str: [*c]utf8_int8_t, replacement: utf8_int32_t) c_int {
    var str = arg_str;
    var read: [*c]utf8_int8_t = str;
    var write: [*c]utf8_int8_t = read;
    const r: utf8_int8_t = @bitCast(utf8_int8_t, @truncate(i8, replacement));
    var codepoint: utf8_int32_t = 0;
    if (replacement > @as(c_int, 127)) {
        return -@as(c_int, 1);
    }
    while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, read.*))) {
        if (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, read.*)))) {
            if (((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, read[@intCast(c_uint, @as(c_int, 1))])))) or (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, read[@intCast(c_uint, @as(c_int, 2))]))))) or (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, read[@intCast(c_uint, @as(c_int, 3))]))))) {
                (blk: {
                    const ref = &write;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = r;
                read += 1;
                continue;
            }
            read = utf8codepoint(read, &codepoint);
            write = utf8catcodepoint(write, codepoint, @bitCast(usize, @as(c_long, @as(c_int, 4))));
        } else if (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, read.*)))) {
            if ((@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, read[@intCast(c_uint, @as(c_int, 1))])))) or (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, read[@intCast(c_uint, @as(c_int, 2))]))))) {
                (blk: {
                    const ref = &write;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = r;
                read += 1;
                continue;
            }
            read = utf8codepoint(read, &codepoint);
            write = utf8catcodepoint(write, codepoint, @bitCast(usize, @as(c_long, @as(c_int, 3))));
        } else if (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, read.*)))) {
            if (@as(c_int, 128) != (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, read[@intCast(c_uint, @as(c_int, 1))])))) {
                (blk: {
                    const ref = &write;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = r;
                read += 1;
                continue;
            }
            read = utf8codepoint(read, &codepoint);
            write = utf8catcodepoint(write, codepoint, @bitCast(usize, @as(c_long, @as(c_int, 2))));
        } else if (@as(c_int, 0) == (@as(c_int, 128) & @bitCast(c_int, @as(c_uint, read.*)))) {
            read = utf8codepoint(read, &codepoint);
            write = utf8catcodepoint(write, codepoint, @bitCast(usize, @as(c_long, @as(c_int, 1))));
        } else {
            (blk: {
                const ref = &write;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = r;
            read += 1;
            continue;
        }
    }
    write.* = '\x00';
    return 0;
}
pub export fn utf8codepoint(noalias arg_str: [*c]const utf8_int8_t, noalias arg_out_codepoint: [*c]utf8_int32_t) [*c]utf8_int8_t {
    var str = arg_str;
    var out_codepoint = arg_out_codepoint;
    if (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
        out_codepoint.* = ((((@as(c_int, 7) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))]))) << @intCast(@import("std").math.Log2Int(c_int), 18)) | ((@as(c_int, 63) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))]))) << @intCast(@import("std").math.Log2Int(c_int), 12))) | ((@as(c_int, 63) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 2))]))) << @intCast(@import("std").math.Log2Int(c_int), 6))) | (@as(c_int, 63) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 3))])));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 4)));
    } else if (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
        out_codepoint.* = (((@as(c_int, 15) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))]))) << @intCast(@import("std").math.Log2Int(c_int), 12)) | ((@as(c_int, 63) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))]))) << @intCast(@import("std").math.Log2Int(c_int), 6))) | (@as(c_int, 63) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 2))])));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 3)));
    } else if (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
        out_codepoint.* = ((@as(c_int, 31) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))]))) << @intCast(@import("std").math.Log2Int(c_int), 6)) | (@as(c_int, 63) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 1))])));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 2)));
    } else {
        out_codepoint.* = @bitCast(utf8_int32_t, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))]));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 1)));
    }
    return @intToPtr([*c]utf8_int8_t, @ptrToInt(str));
}
pub export fn utf8codepointcalcsize(arg_str: [*c]const utf8_int8_t) usize {
    var str = arg_str;
    if (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
        return 4;
    } else if (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
        return 3;
    } else if (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, str[@intCast(c_uint, @as(c_int, 0))])))) {
        return 2;
    }
    return 1;
}
pub export fn utf8codepointsize(arg_chr: utf8_int32_t) usize {
    var chr = arg_chr;
    if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294967168)) & chr)) {
        return 1;
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294965248)) & chr)) {
        return 2;
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294901760)) & chr)) {
        return 3;
    } else {
        return 4;
    }
    return 0;
}
pub export fn utf8catcodepoint(arg_str: [*c]utf8_int8_t, arg_chr: utf8_int32_t, arg_n: usize) [*c]utf8_int8_t {
    var str = arg_str;
    var chr = arg_chr;
    var n = arg_n;
    if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294967168)) & chr)) {
        if (n < @bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) {
            return null;
        }
        str[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, chr));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 1)));
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294965248)) & chr)) {
        if (n < @bitCast(c_ulong, @as(c_long, @as(c_int, 2)))) {
            return null;
        }
        str[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 192) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 6)) & @as(c_int, 31)))))));
        str[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 2)));
    } else if (@as(c_int, 0) == (@bitCast(utf8_int32_t, @as(c_uint, 4294901760)) & chr)) {
        if (n < @bitCast(c_ulong, @as(c_long, @as(c_int, 3)))) {
            return null;
        }
        str[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 224) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 12)) & @as(c_int, 15)))))));
        str[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 6)) & @as(c_int, 63)))))));
        str[@intCast(c_uint, @as(c_int, 2))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 3)));
    } else {
        if (n < @bitCast(c_ulong, @as(c_long, @as(c_int, 4)))) {
            return null;
        }
        str[@intCast(c_uint, @as(c_int, 0))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 240) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 18)) & @as(c_int, 7)))))));
        str[@intCast(c_uint, @as(c_int, 1))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 12)) & @as(c_int, 63)))))));
        str[@intCast(c_uint, @as(c_int, 2))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (chr >> @intCast(@import("std").math.Log2Int(utf8_int32_t), 6)) & @as(c_int, 63)))))));
        str[@intCast(c_uint, @as(c_int, 3))] = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, chr & @as(c_int, 63)))))));
        str += @bitCast(usize, @intCast(isize, @as(c_int, 4)));
    }
    return str;
}
pub export fn utf8islower(arg_chr: utf8_int32_t) c_int {
    var chr = arg_chr;
    return @boolToInt(chr != utf8uprcodepoint(chr));
}
pub export fn utf8isupper(arg_chr: utf8_int32_t) c_int {
    var chr = arg_chr;
    return @boolToInt(chr != utf8lwrcodepoint(chr));
}
pub export fn utf8lwr(noalias arg_str: [*c]utf8_int8_t) void {
    var str = arg_str;
    var cp: utf8_int32_t = 0;
    var pn: [*c]utf8_int8_t = utf8codepoint(str, &cp);
    while (cp != @as(c_int, 0)) {
        const lwr_cp: utf8_int32_t = utf8lwrcodepoint(cp);
        const size: usize = utf8codepointsize(lwr_cp);
        if (lwr_cp != cp) {
            _ = utf8catcodepoint(str, lwr_cp, size);
        }
        str = pn;
        pn = utf8codepoint(str, &cp);
    }
}
pub export fn utf8upr(noalias arg_str: [*c]utf8_int8_t) void {
    var str = arg_str;
    var cp: utf8_int32_t = 0;
    var pn: [*c]utf8_int8_t = utf8codepoint(str, &cp);
    while (cp != @as(c_int, 0)) {
        const lwr_cp: utf8_int32_t = utf8uprcodepoint(cp);
        const size: usize = utf8codepointsize(lwr_cp);
        if (lwr_cp != cp) {
            _ = utf8catcodepoint(str, lwr_cp, size);
        }
        str = pn;
        pn = utf8codepoint(str, &cp);
    }
}
pub export fn utf8lwrcodepoint(arg_cp: utf8_int32_t) utf8_int32_t {
    var cp = arg_cp;
    if (((((((@as(c_int, 65) <= cp) and (@as(c_int, 90) >= cp)) or ((@as(c_int, 192) <= cp) and (@as(c_int, 214) >= cp))) or ((@as(c_int, 216) <= cp) and (@as(c_int, 222) >= cp))) or ((@as(c_int, 913) <= cp) and (@as(c_int, 929) >= cp))) or ((@as(c_int, 931) <= cp) and (@as(c_int, 939) >= cp))) or ((@as(c_int, 1040) <= cp) and (@as(c_int, 1071) >= cp))) {
        cp += @as(c_int, 32);
    } else if ((@as(c_int, 1024) <= cp) and (@as(c_int, 1039) >= cp)) {
        cp += @as(c_int, 80);
    } else if (((((((((((((@as(c_int, 256) <= cp) and (@as(c_int, 303) >= cp)) or ((@as(c_int, 306) <= cp) and (@as(c_int, 311) >= cp))) or ((@as(c_int, 330) <= cp) and (@as(c_int, 375) >= cp))) or ((@as(c_int, 386) <= cp) and (@as(c_int, 389) >= cp))) or ((@as(c_int, 416) <= cp) and (@as(c_int, 421) >= cp))) or ((@as(c_int, 478) <= cp) and (@as(c_int, 495) >= cp))) or ((@as(c_int, 504) <= cp) and (@as(c_int, 543) >= cp))) or ((@as(c_int, 546) <= cp) and (@as(c_int, 563) >= cp))) or ((@as(c_int, 582) <= cp) and (@as(c_int, 591) >= cp))) or ((@as(c_int, 984) <= cp) and (@as(c_int, 1007) >= cp))) or ((@as(c_int, 1120) <= cp) and (@as(c_int, 1153) >= cp))) or ((@as(c_int, 1162) <= cp) and (@as(c_int, 1279) >= cp))) {
        cp |= @as(c_int, 1);
    } else if ((((((@as(c_int, 313) <= cp) and (@as(c_int, 328) >= cp)) or ((@as(c_int, 377) <= cp) and (@as(c_int, 382) >= cp))) or ((@as(c_int, 431) <= cp) and (@as(c_int, 432) >= cp))) or ((@as(c_int, 435) <= cp) and (@as(c_int, 438) >= cp))) or ((@as(c_int, 461) <= cp) and (@as(c_int, 476) >= cp))) {
        cp += @as(c_int, 1);
        cp &= ~@as(c_int, 1);
    } else {
        while (true) {
            switch (cp) {
                else => break,
                @as(c_int, 376) => {
                    cp = 255;
                    break;
                },
                @as(c_int, 579) => {
                    cp = 384;
                    break;
                },
                @as(c_int, 398) => {
                    cp = 477;
                    break;
                },
                @as(c_int, 573) => {
                    cp = 410;
                    break;
                },
                @as(c_int, 544) => {
                    cp = 414;
                    break;
                },
                @as(c_int, 439) => {
                    cp = 658;
                    break;
                },
                @as(c_int, 452) => {
                    cp = 454;
                    break;
                },
                @as(c_int, 455) => {
                    cp = 457;
                    break;
                },
                @as(c_int, 458) => {
                    cp = 460;
                    break;
                },
                @as(c_int, 497) => {
                    cp = 499;
                    break;
                },
                @as(c_int, 503) => {
                    cp = 447;
                    break;
                },
                @as(c_int, 391) => {
                    cp = 392;
                    break;
                },
                @as(c_int, 395) => {
                    cp = 396;
                    break;
                },
                @as(c_int, 401) => {
                    cp = 402;
                    break;
                },
                @as(c_int, 408) => {
                    cp = 409;
                    break;
                },
                @as(c_int, 423) => {
                    cp = 424;
                    break;
                },
                @as(c_int, 428) => {
                    cp = 429;
                    break;
                },
                @as(c_int, 431) => {
                    cp = 432;
                    break;
                },
                @as(c_int, 440) => {
                    cp = 441;
                    break;
                },
                @as(c_int, 444) => {
                    cp = 445;
                    break;
                },
                @as(c_int, 500) => {
                    cp = 501;
                    break;
                },
                @as(c_int, 571) => {
                    cp = 572;
                    break;
                },
                @as(c_int, 577) => {
                    cp = 578;
                    break;
                },
                @as(c_int, 1021) => {
                    cp = 891;
                    break;
                },
                @as(c_int, 1022) => {
                    cp = 892;
                    break;
                },
                @as(c_int, 1023) => {
                    cp = 893;
                    break;
                },
                @as(c_int, 895) => {
                    cp = 1011;
                    break;
                },
                @as(c_int, 902) => {
                    cp = 940;
                    break;
                },
                @as(c_int, 904) => {
                    cp = 941;
                    break;
                },
                @as(c_int, 905) => {
                    cp = 942;
                    break;
                },
                @as(c_int, 906) => {
                    cp = 943;
                    break;
                },
                @as(c_int, 908) => {
                    cp = 972;
                    break;
                },
                @as(c_int, 910) => {
                    cp = 973;
                    break;
                },
                @as(c_int, 911) => {
                    cp = 974;
                    break;
                },
                @as(c_int, 880) => {
                    cp = 881;
                    break;
                },
                @as(c_int, 882) => {
                    cp = 883;
                    break;
                },
                @as(c_int, 886) => {
                    cp = 887;
                    break;
                },
                @as(c_int, 1012) => {
                    cp = 952;
                    break;
                },
                @as(c_int, 975) => {
                    cp = 983;
                    break;
                },
                @as(c_int, 1017) => {
                    cp = 1010;
                    break;
                },
                @as(c_int, 1015) => {
                    cp = 1016;
                    break;
                },
                @as(c_int, 1018) => {
                    cp = 1019;
                    break;
                },
            }
            break;
        }
    }
    return cp;
}
pub export fn utf8uprcodepoint(arg_cp: utf8_int32_t) utf8_int32_t {
    var cp = arg_cp;
    if (((((((@as(c_int, 97) <= cp) and (@as(c_int, 122) >= cp)) or ((@as(c_int, 224) <= cp) and (@as(c_int, 246) >= cp))) or ((@as(c_int, 248) <= cp) and (@as(c_int, 254) >= cp))) or ((@as(c_int, 945) <= cp) and (@as(c_int, 961) >= cp))) or ((@as(c_int, 963) <= cp) and (@as(c_int, 971) >= cp))) or ((@as(c_int, 1072) <= cp) and (@as(c_int, 1103) >= cp))) {
        cp -= @as(c_int, 32);
    } else if ((@as(c_int, 1104) <= cp) and (@as(c_int, 1119) >= cp)) {
        cp -= @as(c_int, 80);
    } else if (((((((((((((@as(c_int, 256) <= cp) and (@as(c_int, 303) >= cp)) or ((@as(c_int, 306) <= cp) and (@as(c_int, 311) >= cp))) or ((@as(c_int, 330) <= cp) and (@as(c_int, 375) >= cp))) or ((@as(c_int, 386) <= cp) and (@as(c_int, 389) >= cp))) or ((@as(c_int, 416) <= cp) and (@as(c_int, 421) >= cp))) or ((@as(c_int, 478) <= cp) and (@as(c_int, 495) >= cp))) or ((@as(c_int, 504) <= cp) and (@as(c_int, 543) >= cp))) or ((@as(c_int, 546) <= cp) and (@as(c_int, 563) >= cp))) or ((@as(c_int, 582) <= cp) and (@as(c_int, 591) >= cp))) or ((@as(c_int, 984) <= cp) and (@as(c_int, 1007) >= cp))) or ((@as(c_int, 1120) <= cp) and (@as(c_int, 1153) >= cp))) or ((@as(c_int, 1162) <= cp) and (@as(c_int, 1279) >= cp))) {
        cp &= ~@as(c_int, 1);
    } else if ((((((@as(c_int, 313) <= cp) and (@as(c_int, 328) >= cp)) or ((@as(c_int, 377) <= cp) and (@as(c_int, 382) >= cp))) or ((@as(c_int, 431) <= cp) and (@as(c_int, 432) >= cp))) or ((@as(c_int, 435) <= cp) and (@as(c_int, 438) >= cp))) or ((@as(c_int, 461) <= cp) and (@as(c_int, 476) >= cp))) {
        cp -= @as(c_int, 1);
        cp |= @as(c_int, 1);
    } else {
        while (true) {
            switch (cp) {
                else => break,
                @as(c_int, 255) => {
                    cp = 376;
                    break;
                },
                @as(c_int, 384) => {
                    cp = 579;
                    break;
                },
                @as(c_int, 477) => {
                    cp = 398;
                    break;
                },
                @as(c_int, 410) => {
                    cp = 573;
                    break;
                },
                @as(c_int, 414) => {
                    cp = 544;
                    break;
                },
                @as(c_int, 658) => {
                    cp = 439;
                    break;
                },
                @as(c_int, 454) => {
                    cp = 452;
                    break;
                },
                @as(c_int, 457) => {
                    cp = 455;
                    break;
                },
                @as(c_int, 460) => {
                    cp = 458;
                    break;
                },
                @as(c_int, 499) => {
                    cp = 497;
                    break;
                },
                @as(c_int, 447) => {
                    cp = 503;
                    break;
                },
                @as(c_int, 392) => {
                    cp = 391;
                    break;
                },
                @as(c_int, 396) => {
                    cp = 395;
                    break;
                },
                @as(c_int, 402) => {
                    cp = 401;
                    break;
                },
                @as(c_int, 409) => {
                    cp = 408;
                    break;
                },
                @as(c_int, 424) => {
                    cp = 423;
                    break;
                },
                @as(c_int, 429) => {
                    cp = 428;
                    break;
                },
                @as(c_int, 432) => {
                    cp = 431;
                    break;
                },
                @as(c_int, 441) => {
                    cp = 440;
                    break;
                },
                @as(c_int, 445) => {
                    cp = 444;
                    break;
                },
                @as(c_int, 501) => {
                    cp = 500;
                    break;
                },
                @as(c_int, 572) => {
                    cp = 571;
                    break;
                },
                @as(c_int, 578) => {
                    cp = 577;
                    break;
                },
                @as(c_int, 891) => {
                    cp = 1021;
                    break;
                },
                @as(c_int, 892) => {
                    cp = 1022;
                    break;
                },
                @as(c_int, 893) => {
                    cp = 1023;
                    break;
                },
                @as(c_int, 1011) => {
                    cp = 895;
                    break;
                },
                @as(c_int, 940) => {
                    cp = 902;
                    break;
                },
                @as(c_int, 941) => {
                    cp = 904;
                    break;
                },
                @as(c_int, 942) => {
                    cp = 905;
                    break;
                },
                @as(c_int, 943) => {
                    cp = 906;
                    break;
                },
                @as(c_int, 972) => {
                    cp = 908;
                    break;
                },
                @as(c_int, 973) => {
                    cp = 910;
                    break;
                },
                @as(c_int, 974) => {
                    cp = 911;
                    break;
                },
                @as(c_int, 881) => {
                    cp = 880;
                    break;
                },
                @as(c_int, 883) => {
                    cp = 882;
                    break;
                },
                @as(c_int, 887) => {
                    cp = 886;
                    break;
                },
                @as(c_int, 977) => {
                    cp = 920;
                    break;
                },
                @as(c_int, 983) => {
                    cp = 975;
                    break;
                },
                @as(c_int, 1010) => {
                    cp = 1017;
                    break;
                },
                @as(c_int, 1016) => {
                    cp = 1015;
                    break;
                },
                @as(c_int, 1019) => {
                    cp = 1018;
                    break;
                },
            }
            break;
        }
    }
    return cp;
}
pub export fn utf8rcodepoint(noalias arg_str: [*c]const utf8_int8_t, noalias arg_out_codepoint: [*c]utf8_int32_t) [*c]utf8_int8_t {
    var str = arg_str;
    var out_codepoint = arg_out_codepoint;
    var s: [*c]const utf8_int8_t = str;
    if (@as(c_int, 240) == (@as(c_int, 248) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))])))) {
        out_codepoint.* = ((((@as(c_int, 7) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))]))) << @intCast(@import("std").math.Log2Int(c_int), 18)) | ((@as(c_int, 63) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 1))]))) << @intCast(@import("std").math.Log2Int(c_int), 12))) | ((@as(c_int, 63) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 2))]))) << @intCast(@import("std").math.Log2Int(c_int), 6))) | (@as(c_int, 63) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 3))])));
    } else if (@as(c_int, 224) == (@as(c_int, 240) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))])))) {
        out_codepoint.* = (((@as(c_int, 15) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))]))) << @intCast(@import("std").math.Log2Int(c_int), 12)) | ((@as(c_int, 63) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 1))]))) << @intCast(@import("std").math.Log2Int(c_int), 6))) | (@as(c_int, 63) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 2))])));
    } else if (@as(c_int, 192) == (@as(c_int, 224) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))])))) {
        out_codepoint.* = ((@as(c_int, 31) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))]))) << @intCast(@import("std").math.Log2Int(c_int), 6)) | (@as(c_int, 63) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 1))])));
    } else {
        out_codepoint.* = @bitCast(utf8_int32_t, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))]));
    }
    while (true) {
        s -= 1;
        if (!((@as(c_int, 0) != (@as(c_int, 128) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))])))) and (@as(c_int, 128) == (@as(c_int, 192) & @bitCast(c_int, @as(c_uint, s[@intCast(c_uint, @as(c_int, 0))])))))) break;
    }
    return @intToPtr([*c]utf8_int8_t, @ptrToInt(s));
}
pub export fn utf8dup_ex(arg_src: [*c]const utf8_int8_t, arg_alloc_func_ptr: ?*const fn ([*c]utf8_int8_t, usize) callconv(.C) [*c]utf8_int8_t, arg_user_data: [*c]utf8_int8_t) [*c]utf8_int8_t {
    var src = arg_src;
    var alloc_func_ptr = arg_alloc_func_ptr;
    var user_data = arg_user_data;
    var n: [*c]utf8_int8_t = null;
    var bytes: usize = utf8size(src);
    if (alloc_func_ptr != null) {
        n = alloc_func_ptr.?(user_data, bytes);
    } else {}
    if (null == n) {
        return null;
    } else {
        bytes = 0;
        while (@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src[bytes]))) {
            n[bytes] = src[bytes];
            bytes +%= 1;
        }
        n[bytes] = '\x00';
        return n;
    }
    return null;
}
pub export fn utf8ndup_ex(arg_src: [*c]const utf8_int8_t, arg_n: usize, arg_alloc_func_ptr: ?*const fn ([*c]utf8_int8_t, usize) callconv(.C) [*c]utf8_int8_t, arg_user_data: [*c]utf8_int8_t) [*c]utf8_int8_t {
    var src = arg_src;
    var n = arg_n;
    var alloc_func_ptr = arg_alloc_func_ptr;
    var user_data = arg_user_data;
    var c: [*c]utf8_int8_t = null;
    var bytes: usize = 0;
    while ((@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src[bytes]))) and (bytes < n)) {
        bytes +%= 1;
    }
    n = bytes;
    if (alloc_func_ptr != null) {
        c = alloc_func_ptr.?(user_data, bytes +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1))));
    } else {}
    if (null == c) {
        return null;
    }
    bytes = 0;
    while ((@as(c_int, '\x00') != @bitCast(c_int, @as(c_uint, src[bytes]))) and (bytes < n)) {
        c[bytes] = src[bytes];
        bytes +%= 1;
    }
    c[bytes] = '\x00';
    return c;
}
pub extern fn utf8coll(src1: [*c]const utf8_int8_t, src2: [*c]const utf8_int8_t) c_int;
pub extern fn utf8fry(str: [*c]const utf8_int8_t) [*c]utf8_int8_t;
pub export fn Core_UCS2toUTF8NullLen(arg_text: [*c]const u16) usize {
    var text = arg_text;
    var bytes: usize = 1;
    while (text.* != 0) {
        var ch: u16 = (blk: {
            const ref = &text;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        if (@bitCast(c_int, @as(c_uint, ch)) <= @as(c_int, 127)) {
            bytes +%= @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        } else if (@bitCast(c_int, @as(c_uint, ch)) <= @as(c_int, 2047)) {
            bytes +%= @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
        } else {
            bytes +%= @bitCast(c_ulong, @as(c_long, @as(c_int, 3)));
        }
    }
    return bytes;
}
pub export fn Core_UCS2toUTF8Len(arg_text: [*c]const u16, arg_len: c_int) usize {
    var text = arg_text;
    var len = arg_len;
    var bytes: usize = 1;
    while (len > @as(c_int, 0)) {
        var ch: u16 = (blk: {
            const ref = &text;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        if (@bitCast(c_int, @as(c_uint, ch)) <= @as(c_int, 127)) {
            bytes +%= @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        } else if (@bitCast(c_int, @as(c_uint, ch)) <= @as(c_int, 2047)) {
            bytes +%= @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
        } else {
            bytes +%= @bitCast(c_ulong, @as(c_long, @as(c_int, 3)));
        }
        len -= 1;
    }
    return bytes;
}
pub export fn Core_UCS2toUTF8(arg_src: [*c]const u16, arg_len: c_int, arg_dst: [*c]utf8_int8_t) void {
    var src = arg_src;
    var len = arg_len;
    var dst = arg_dst;
    while (len > @as(c_int, 0)) {
        var ch: u16 = (blk: {
            const ref = &src;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        if (@bitCast(c_int, @as(c_uint, ch)) <= @as(c_int, 127)) {
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = @bitCast(utf8_int8_t, @truncate(u8, ch));
        } else if (@bitCast(c_int, @as(c_uint, ch)) <= @as(c_int, 2047)) {
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 192) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (@bitCast(c_int, @as(c_uint, ch)) >> @intCast(@import("std").math.Log2Int(c_int), 6)) & @as(c_int, 31)))))));
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, @bitCast(c_int, @as(c_uint, ch)) & @as(c_int, 63)))))));
        } else {
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 224) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (@bitCast(c_int, @as(c_uint, ch)) >> @intCast(@import("std").math.Log2Int(c_int), 12)) & @as(c_int, 15)))))));
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, (@bitCast(c_int, @as(c_uint, ch)) >> @intCast(@import("std").math.Log2Int(c_int), 6)) & @as(c_int, 63)))))));
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = @bitCast(utf8_int8_t, @truncate(i8, @as(c_int, 128) | @bitCast(c_int, @as(c_uint, @bitCast(utf8_int8_t, @truncate(i8, @bitCast(c_int, @as(c_uint, ch)) & @as(c_int, 63)))))));
        }
        len -= 1;
    }
    dst.* = '\x00';
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):80:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):86:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):109:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):113:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):122:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):344:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stddef.h:104:9
pub const __stdint_join3 = @compileError("unable to translate C expr: unexpected token '##'"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:245:9
pub const __int_c_join = @compileError("unable to translate C expr: unexpected token '##'"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:282:9
pub const __uint_c = @compileError("unable to translate macro: undefined identifier `U`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:284:9
pub const __INTN_MIN = @compileError("unable to translate macro: undefined identifier `INT`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:776:10
pub const __INTN_MAX = @compileError("unable to translate macro: undefined identifier `INT`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:777:10
pub const __UINTN_MAX = @compileError("unable to translate macro: undefined identifier `UINT`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:778:9
pub const __INTN_C = @compileError("unable to translate macro: undefined identifier `INT`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:779:10
pub const __UINTN_C = @compileError("unable to translate macro: undefined identifier `UINT`"); // /home/deano/projects/test_init_workspace/bin/lib/include/stdint.h:780:9
pub const RESTRICT = @compileError("unable to translate macro: undefined identifier `__restrict`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:14:9
pub const WEAK_LINKAGE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:16:9
pub const WARN_UNUSED_RESULT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:17:9
pub const PACKED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:18:9
pub const HIDDEN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:19:9
pub const ALIGN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:21:9
pub const KEEP = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:22:9
pub const ALIAS = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:23:9
pub const INLINE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:25:9
pub const ONLY_INLINE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:26:9
pub const ALWAYS_INLINE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:27:9
pub const NON_NULL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:29:9
pub const FORMAT_PRINT = @compileError("unable to translate C expr: expected ')' instead got '...'"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:30:9
pub const static_assert = @compileError("unable to translate C expr: expected ')' instead got '...'"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:39:9
pub const NO_RETURN = @compileError("unable to translate C expr: unexpected token '_Noreturn'"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:40:9
pub const EXTERN_C = @compileError("unable to translate C expr: unexpected token 'extern'"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:41:9
pub const STACK_ALLOC = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:44:9
pub const IKUY_DEBUG_BREAK = @compileError("unable to translate macro: undefined identifier `__builtin_trap`"); // ikuy_std_resources/catalog/software/libs/core/include/core/core.h:82:9
pub const assert = @compileError("unable to translate C expr: unexpected token 'Eof'"); // ikuy_std_resources/catalog/software/libs/core/include/core/utf8.h:58:9
pub const utf8_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/utf8.h:90:9
pub const utf8_pure = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/utf8.h:91:9
pub const utf8_restrict = @compileError("unable to translate macro: undefined identifier `__restrict__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/utf8.h:92:9
pub const utf8_weak = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ikuy_std_resources/catalog/software/libs/core/include/core/utf8.h:93:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 15);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "15.0.0 (git@github.com:ziglang/zig-bootstrap.git 9be8396b715b10f64d8a94b2d0d9acb77126d8ca)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 15.0.0 (git@github.com:ziglang/zig-bootstrap.git 9be8396b715b10f64d8a94b2d0d9acb77126d8ca)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __PIE__ = @as(c_int, 2);
pub const __pie__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver2 = @as(c_int, 1);
pub const __znver2__ = @as(c_int, 1);
pub const __tune_znver2__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const __CLANG_STDINT_H = "";
pub const __int_least64_t = i64;
pub const __uint_least64_t = u64;
pub const __int_least32_t = i64;
pub const __uint_least32_t = u64;
pub const __int_least16_t = i64;
pub const __uint_least16_t = u64;
pub const __int_least8_t = i64;
pub const __uint_least8_t = u64;
pub const __uint32_t_defined = "";
pub const __int8_t_defined = "";
pub const __intptr_t_defined = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub inline fn __int_c(v: anytype, suffix: anytype) @TypeOf(__int_c_join(v, suffix)) {
    return __int_c_join(v, suffix);
}
pub const __int64_c_suffix = __INT64_C_SUFFIX__;
pub const __int32_c_suffix = __INT64_C_SUFFIX__;
pub const __int16_c_suffix = __INT64_C_SUFFIX__;
pub const __int8_c_suffix = __INT64_C_SUFFIX__;
pub inline fn INT64_C(v: anytype) @TypeOf(__int_c(v, __int64_c_suffix)) {
    return __int_c(v, __int64_c_suffix);
}
pub inline fn UINT64_C(v: anytype) @TypeOf(__uint_c(v, __int64_c_suffix)) {
    return __uint_c(v, __int64_c_suffix);
}
pub inline fn INT32_C(v: anytype) @TypeOf(__int_c(v, __int32_c_suffix)) {
    return __int_c(v, __int32_c_suffix);
}
pub inline fn UINT32_C(v: anytype) @TypeOf(__uint_c(v, __int32_c_suffix)) {
    return __uint_c(v, __int32_c_suffix);
}
pub inline fn INT16_C(v: anytype) @TypeOf(__int_c(v, __int16_c_suffix)) {
    return __int_c(v, __int16_c_suffix);
}
pub inline fn UINT16_C(v: anytype) @TypeOf(__uint_c(v, __int16_c_suffix)) {
    return __uint_c(v, __int16_c_suffix);
}
pub inline fn INT8_C(v: anytype) @TypeOf(__int_c(v, __int8_c_suffix)) {
    return __int_c(v, __int8_c_suffix);
}
pub inline fn UINT8_C(v: anytype) @TypeOf(__uint_c(v, __int8_c_suffix)) {
    return __uint_c(v, __int8_c_suffix);
}
pub const INT64_MAX = INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const INT64_MIN = -INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const UINT64_MAX = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const __INT_LEAST64_MIN = INT64_MIN;
pub const __INT_LEAST64_MAX = INT64_MAX;
pub const __UINT_LEAST64_MAX = UINT64_MAX;
pub const __INT_LEAST32_MIN = INT64_MIN;
pub const __INT_LEAST32_MAX = INT64_MAX;
pub const __UINT_LEAST32_MAX = UINT64_MAX;
pub const __INT_LEAST16_MIN = INT64_MIN;
pub const __INT_LEAST16_MAX = INT64_MAX;
pub const __UINT_LEAST16_MAX = UINT64_MAX;
pub const __INT_LEAST8_MIN = INT64_MIN;
pub const __INT_LEAST8_MAX = INT64_MAX;
pub const __UINT_LEAST8_MAX = UINT64_MAX;
pub const INT_LEAST64_MIN = __INT_LEAST64_MIN;
pub const INT_LEAST64_MAX = __INT_LEAST64_MAX;
pub const UINT_LEAST64_MAX = __UINT_LEAST64_MAX;
pub const INT_FAST64_MIN = __INT_LEAST64_MIN;
pub const INT_FAST64_MAX = __INT_LEAST64_MAX;
pub const UINT_FAST64_MAX = __UINT_LEAST64_MAX;
pub const INT32_MAX = INT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal));
pub const INT32_MIN = -INT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal)) - @as(c_int, 1);
pub const UINT32_MAX = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 4294967295, .decimal));
pub const INT_LEAST32_MIN = __INT_LEAST32_MIN;
pub const INT_LEAST32_MAX = __INT_LEAST32_MAX;
pub const UINT_LEAST32_MAX = __UINT_LEAST32_MAX;
pub const INT_FAST32_MIN = __INT_LEAST32_MIN;
pub const INT_FAST32_MAX = __INT_LEAST32_MAX;
pub const UINT_FAST32_MAX = __UINT_LEAST32_MAX;
pub const INT16_MAX = INT16_C(@as(c_int, 32767));
pub const INT16_MIN = -INT16_C(@as(c_int, 32767)) - @as(c_int, 1);
pub const UINT16_MAX = UINT16_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal));
pub const INT_LEAST16_MIN = __INT_LEAST16_MIN;
pub const INT_LEAST16_MAX = __INT_LEAST16_MAX;
pub const UINT_LEAST16_MAX = __UINT_LEAST16_MAX;
pub const INT_FAST16_MIN = __INT_LEAST16_MIN;
pub const INT_FAST16_MAX = __INT_LEAST16_MAX;
pub const UINT_FAST16_MAX = __UINT_LEAST16_MAX;
pub const INT8_MAX = INT8_C(@as(c_int, 127));
pub const INT8_MIN = -INT8_C(@as(c_int, 127)) - @as(c_int, 1);
pub const UINT8_MAX = UINT8_C(@as(c_int, 255));
pub const INT_LEAST8_MIN = __INT_LEAST8_MIN;
pub const INT_LEAST8_MAX = __INT_LEAST8_MAX;
pub const UINT_LEAST8_MAX = __UINT_LEAST8_MAX;
pub const INT_FAST8_MIN = __INT_LEAST8_MIN;
pub const INT_FAST8_MAX = __INT_LEAST8_MAX;
pub const UINT_FAST8_MAX = __UINT_LEAST8_MAX;
pub const INTPTR_MIN = -__INTPTR_MAX__ - @as(c_int, 1);
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub const PTRDIFF_MIN = -__PTRDIFF_MAX__ - @as(c_int, 1);
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const SIZE_MAX = __SIZE_MAX__;
pub const INTMAX_MIN = -__INTMAX_MAX__ - @as(c_int, 1);
pub const INTMAX_MAX = __INTMAX_MAX__;
pub const UINTMAX_MAX = __UINTMAX_MAX__;
pub const SIG_ATOMIC_MIN = __INTN_MIN(__SIG_ATOMIC_WIDTH__);
pub const SIG_ATOMIC_MAX = __INTN_MAX(__SIG_ATOMIC_WIDTH__);
pub const WINT_MIN = __UINTN_C(__WINT_WIDTH__, @as(c_int, 0));
pub const WINT_MAX = __UINTN_MAX(__WINT_WIDTH__);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = __INTN_MIN(__WCHAR_WIDTH__);
pub inline fn INTMAX_C(v: anytype) @TypeOf(__int_c(v, __INTMAX_C_SUFFIX__)) {
    return __int_c(v, __INTMAX_C_SUFFIX__);
}
pub inline fn UINTMAX_C(v: anytype) @TypeOf(__int_c(v, __UINTMAX_C_SUFFIX__)) {
    return __int_c(v, __UINTMAX_C_SUFFIX__);
}
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const nullptr = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub inline fn BRANCH_LIKELY(x: anytype) @TypeOf(__builtin_expect(x, @as(c_int, 1))) {
    return __builtin_expect(x, @as(c_int, 1));
}
pub inline fn BRANCH_UNLIKELY(x: anytype) @TypeOf(__builtin_expect(x, @as(c_int, 0))) {
    return __builtin_expect(x, @as(c_int, 0));
}
pub const CONST_EXPR = "";
pub const SHEREDOM_UTF8_H_INCLUDED = "";
pub const UTF8_NO_STD_MALLOC = @as(c_int, 1);
pub const utf8_null = @as(c_int, 0);
pub const utf8_constexpr14 = utf8_weak;
pub const utf8_constexpr14_impl = "";
