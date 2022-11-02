const TinyImageFormatNamespace = enum(u8) {
    PACK = 0,
    DEPTH_STENCIL = 1,
    DXTC = 2,
    PVRTC = 3,
    ETC = 4,
    ASTC = 5,
    CLUT = 6,
};

const TinyImageFormatPackSpecial = enum(u8) {
    NONE = 0,
    PACK = 1,
    MULTI2 = 2,
    MULTI4 = 3,
    MULTI8 = 4,
};

const TinyImageFormatPackBits = enum(u8) {
    BITS_0 = 0,
    BITS_1 = 1,
    BITS_2 = 2,
    BITS_3 = 3,
    BITS_4 = 4,
    BITS_5 = 5,
    BITS_6 = 6,
    BITS_7 = 7,
    BITS_8 = 8,
    BITS_9 = 9,
    BITS_10 = 10,
    BITS_11 = 11,
    BITS_12 = 12,
    BITS_16 = 13,
    BITS_24 = 14,
    BITS_32 = 15,
    BITS_64 = 16,
};

const TinyImageFormatPackSwizzle = enum(u8) {
    SWIZZLE_R = 0,
    SWIZZLE_G = 1,
    SWIZZLE_B = 2,
    SWIZZLE_A = 3,
    SWIZZLE_0 = 4,
    SWIZZLE_1 = 5,
};

const TinyImageFormatPackType = enum(u8) {
    NONE = 0,
    UNORM = 1,
    SNORM = 2,
    UINT = 3,
    SINT = 4,
    UFLOAT = 5,
    SFLOAT = 6,
    SRGB = 7,
    SBFLOAT = 8,
};

const TinyImageFormatDepthStencilTotalSize = enum(u8) {
    SIZE_8 = 0,
    SIZE_16 = 1,
    SIZE_32 = 2,
    SIZE_64 = 3,
};

const TinyImageFormatDepthStencilBits = enum(u8) {
    BITS_0 = 0,
    BITS_8 = 1,
    BITS_16 = 2,
    BITS_24 = 3,
    BITS_32 = 4,
};

const TinyImageFormatDepthStencilSwizzle = enum(u8) {
    SWIZZLE_D = 0,
    SWIZZLE_S = 1,
    SWIZZLE_0 = 2,
};

const TinyImageFormatDepthStencilType = enum(u8) {
    NONE = 0,
    UNORM = 1,
    UINT = 2,
    SFLOAT = 3,
};

const TinyImageFormatDXTCAlpha = enum(u8) {
    NONE = 0,
    PUNCHTHROUGH = 1,
    BLOCK = 2,
    F = 3,
};

const TinyImageFormatDXTCType = enum(u8) {
    UNORM = 0,
    SNORM = 1,
    SRGB = 2,
    SFLOAT = 3,
    UFLOAT = 4,
};

const TinyImageFormatDXTCBlockBytes = enum(u8) {
    BLOCKBYTES_8 = 0,
    BLOCKBYTES_16 = 1,
};

const TinyImageFormatDXTCChannelCount = enum(u8) {
    CHANNELCOUNT_1 = 0,
    CHANNELCOUNT_2 = 1,
    CHANNELCOUNT_3 = 2,
    CHANNELCOUNT_4 = 3,
};

const TinyImageFormatDXTCModeCount = enum(u8) {
    MODECOUNT_1 = 0,
    MODECOUNT_8 = 1,
    MODECOUNT_14 = 2,
};

const TinyImageFormatPVRTCVersion = enum(u8) {
    VERSION_V1 = 0,
    VERSION_V2 = 1,
};

const TinyImageFormatPVRTCBits = enum(u8) {
    BITS_2 = 0,
    BITS_4 = 1,
};

const TinyImageFormatPVRTCType = enum(u8) {
    UNORM = 0,
    SRGB = 1,
};

const TinyImageFormatETCBits = enum(u8) {
    BITS_8 = 0,
    BITS_11 = 1,
};

const TinyImageFormatETCAlpha = enum(u8) {
    NONE = 0,
    PUNCHTHROUGH = 1,
    BLOCK = 2,
};

const TinyImageFormatETCType = enum(u8) {
    UNORM = 0,
    SNORM = 1,
    SRGB = 2,
};

const TinyImageFormatETCChannelCount = enum(u8) {
    CHANNELCOUNT_1 = 0,
    CHANNELCOUNT_2 = 1,
    CHANNELCOUNT_3 = 2,
    CHANNELCOUNT_4 = 3,
};

const TinyImageFormatASTCSize = enum(u8) {
    SIZE_1 = 0,
    SIZE_4 = 2,
    SIZE_5 = 3,
    SIZE_6 = 4,
    SIZE_8 = 5,
    SIZE_10 = 6,
    SIZE_12 = 7,
};

const TinyImageFormatASTCType = enum(u8) {
    UNORM = 0,
    SRGB = 1,
};

const TinyImageFormatCLUTBlockSize = enum(u8) {
    BLOCKSIZE_1 = 0,
    BLOCKSIZE_2 = 1,
    BLOCKSIZE_4 = 2,
    BLOCKSIZE_8 = 3,
};

const TinyImageFormatCLUTBits = enum(u8) {
    BITS_0 = 0,
    BITS_1 = 1,
    BITS_2 = 2,
    BITS_4 = 3,
    BITS_8 = 4,
};

const TinyImageFormatCLUTType = enum(u8) {
    NONE = 0,
    RGB = 1,
    SINGLE = 2,
    EXPLICIT_ALPHA = 3,
};

const TinyImageFormat_NAMESPACE_REQUIRED_BITS = 12;
const TinyImageFormat_NAMESPACE_MASK = (1 << TinyImageFormat_NAMESPACE_REQUIRED_BITS) - 1;

const TinyImageFormat_PACK_SPECIAL_REQUIRED_BITS = 3;
const TinyImageFormat_PACK_BITS_REQUIRED_BITS = 5;
const TinyImageFormat_PACK_SWIZZLE_REQUIRED_BITS = 3;
const TinyImageFormat_PACK_TYPE_REQUIRED_BITS = 4;
const TinyImageFormat_PACK_NUM_CHANNELS = 4;

const TinyImageFormat_PACK_SPECIAL_SHIFT = (TinyImageFormat_NAMESPACE_REQUIRED_BITS);
const TinyImageFormat_PACK_BITS_SHIFT = (TinyImageFormat_PACK_SPECIAL_REQUIRED_BITS + TinyImageFormat_PACK_SPECIAL_SHIFT);
const TinyImageFormat_PACK_SWIZZLE_SHIFT = ((TinyImageFormat_PACK_BITS_REQUIRED_BITS * TinyImageFormat_PACK_NUM_CHANNELS) + TinyImageFormat_PACK_BITS_SHIFT);
const TinyImageFormat_PACK_TYPE_SHIFT = ((TinyImageFormat_PACK_SWIZZLE_REQUIRED_BITS * TinyImageFormat_PACK_NUM_CHANNELS) + TinyImageFormat_PACK_SWIZZLE_SHIFT);

const TinyImageFormat_DEPTH_STENCIL_TOTAL_SIZE_REQUIRED_BITS = 2;
const TinyImageFormat_DEPTH_STENCIL_BITS_REQUIRED_BITS = 3;
const TinyImageFormat_DEPTH_STENCIL_SWIZZLE_REQUIRED_BITS = 2;
const TinyImageFormat_DEPTH_STENCIL_TYPE_REQUIRED_BITS = 2;
const TinyImageFormat_DEPTH_STENCIL_NUM_CHANNELS = 2;

const TinyImageFormat_DEPTH_STENCIL_TOTAL_SIZE_SHIFT = (TinyImageFormat_NAMESPACE_REQUIRED_BITS);
const TinyImageFormat_DEPTH_STENCIL_BITS_SHIFT = ((TinyImageFormat_DEPTH_STENCIL_TOTAL_SIZE_REQUIRED_BITS) + TinyImageFormat_DEPTH_STENCIL_TOTAL_SIZE_SHIFT);
const TinyImageFormat_DEPTH_STENCIL_SWIZZLE_SHIFT = ((TinyImageFormat_DEPTH_STENCIL_BITS_REQUIRED_BITS * TinyImageFormat_DEPTH_STENCIL_NUM_CHANNELS) + TinyImageFormat_DEPTH_STENCIL_BITS_SHIFT);
const TinyImageFormat_DEPTH_STENCIL_TYPE_SHIFT = ((TinyImageFormat_DEPTH_STENCIL_SWIZZLE_REQUIRED_BITS * TinyImageFormat_DEPTH_STENCIL_NUM_CHANNELS) + TinyImageFormat_DEPTH_STENCIL_SWIZZLE_SHIFT);

const TinyImageFormat_DXTC_ALPHA_REQUIRED_BITS = 2;
const TinyImageFormat_DXTC_TYPE_REQUIRED_BITS = 3;
const TinyImageFormat_DXTC_BLOCKBYTES_REQUIRED_BITS = 2;
const TinyImageFormat_DXTC_CHANNELCOUNT_REQUIRED_BITS = 2;
const TinyImageFormat_DXTC_MODECOUNT_REQUIRED_BITS = 3;

const TinyImageFormat_DXTC_ALPHA_SHIFT = (TinyImageFormat_NAMESPACE_REQUIRED_BITS);
const TinyImageFormat_DXTC_TYPE_SHIFT = (TinyImageFormat_DXTC_ALPHA_REQUIRED_BITS + TinyImageFormat_DXTC_ALPHA_SHIFT);
const TinyImageFormat_DXTC_BLOCKBYTES_SHIFT = (TinyImageFormat_DXTC_TYPE_REQUIRED_BITS + TinyImageFormat_DXTC_TYPE_SHIFT);
const TinyImageFormat_DXTC_CHANNELCOUNT_SHIFT = (TinyImageFormat_DXTC_BLOCKBYTES_REQUIRED_BITS + TinyImageFormat_DXTC_BLOCKBYTES_SHIFT);
const TinyImageFormat_DXTC_MODECOUNT_SHIFT = (TinyImageFormat_DXTC_CHANNELCOUNT_REQUIRED_BITS + TinyImageFormat_DXTC_CHANNELCOUNT_SHIFT);

const TinyImageFormat_PVRTC_VERSION_REQUIRED_BITS = 2;
const TinyImageFormat_PVRTC_BITS_REQUIRED_BITS = 2;
const TinyImageFormat_PVRTC_TYPE_REQUIRED_BITS = 2;
const TinyImageFormat_PVRTC_VERSION_SHIFT = (TinyImageFormat_NAMESPACE_REQUIRED_BITS);
const TinyImageFormat_PVRTC_BITS_SHIFT = (TinyImageFormat_PVRTC_VERSION_REQUIRED_BITS + TinyImageFormat_PVRTC_VERSION_SHIFT);
const TinyImageFormat_PVRTC_TYPE_SHIFT = (TinyImageFormat_PVRTC_BITS_REQUIRED_BITS + TinyImageFormat_PVRTC_BITS_SHIFT);

const TinyImageFormat_ETC_BITS_REQUIRED_BITS = 2;
const TinyImageFormat_ETC_ALPHA_REQUIRED_BITS = 2;
const TinyImageFormat_ETC_TYPE_REQUIRED_BITS = 2;
const TinyImageFormat_ETC_CHANNELCOUNT_REQUIRED_BITS = 2;
const TinyImageFormat_ETC_BITS_SHIFT = (TinyImageFormat_NAMESPACE_REQUIRED_BITS);
const TinyImageFormat_ETC_ALPHA_SHIFT = (TinyImageFormat_ETC_BITS_REQUIRED_BITS + TinyImageFormat_ETC_BITS_SHIFT);
const TinyImageFormat_ETC_TYPE_SHIFT = (TinyImageFormat_ETC_ALPHA_REQUIRED_BITS + TinyImageFormat_ETC_ALPHA_SHIFT);
const TinyImageFormat_ETC_CHANNELCOUNT_SHIFT = (TinyImageFormat_ETC_TYPE_REQUIRED_BITS + TinyImageFormat_ETC_TYPE_SHIFT);

const TinyImageFormat_ASTC_SIZE_REQUIRED_BITS = 3;
const TinyImageFormat_ASTC_TYPE_REQUIRED_BITS = 2;
const TinyImageFormat_ASTC_NUM_DIMS = 3;
const TinyImageFormat_ASTC_SIZE_SHIFT = (TinyImageFormat_NAMESPACE_REQUIRED_BITS);
const TinyImageFormat_ASTC_TYPE_SHIFT = ((TinyImageFormat_ASTC_SIZE_REQUIRED_BITS * TinyImageFormat_ASTC_NUM_DIMS) + TinyImageFormat_ASTC_SIZE_SHIFT);

const TinyImageFormat_CLUT_BLOCKSIZE_REQUIRED_BITS = 2;
const TinyImageFormat_CLUT_BITS_REQUIRED_BITS = 3;
const TinyImageFormat_CLUT_TYPE_REQUIRED_BITS = 2;
const TinyImageFormat_CLUT_NUM_CHANNELS = 2;

const TinyImageFormat_CLUT_BLOCKSIZE_SHIFT = TinyImageFormat_NAMESPACE_REQUIRED_BITS;
const TinyImageFormat_CLUT_BITS_SHIFT = TinyImageFormat_CLUT_BLOCKSIZE_REQUIRED_BITS + TinyImageFormat_CLUT_BLOCKSIZE_SHIFT;
const TinyImageFormat_CLUT_TYPE_SHIFT = ((TinyImageFormat_CLUT_BITS_REQUIRED_BITS * TinyImageFormat_CLUT_NUM_CHANNELS) + TinyImageFormat_CLUT_BITS_SHIFT);
