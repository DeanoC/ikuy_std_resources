# TinyImageFormat

TinyImageFormat is a library implementing the common image pixel formats that are used in real-time graphics.
Whilst it provides a enumeration style image format, similar to Vulkan, D3D and Metal is also exposes many other useful information about each format. As well as information it provides functions to decode and encode most formats giving a single library capable of handling many image format you might encounter.

It currently supports image format with up to 4 channels. It has both logical (you ask for Red) or physical (you ask for Channel 0) functions. Most users will want to use logical channels, as it handles all swizzling and constants automatically. Channels are supported up to 64 bit integers and floating point (doubles). It is fixed at Little Endian only, as this is the only machines its currently built for.

It is available as a single header or as several smaller ones. The functionality is exactly the same its purely your own preference which to use. The files you include are generated by a custom code generator that takes a description of each format, generates a 64 bit descriptor code and then creates the header from that.

The multiple header version is split into several related sections, wheres the single header has them all together. The sections are
* Base - basic enumerations and structure
* Query - query infomation about a image format
* Apis - helpers for the main real-time 3D libraries (Vulkan, D3D and metal)
* Decode - Functions to decode pixel data from an image format
* Encode - Functions to encode pixel data from an image format

## API Overview
All types and function are prefixed by _TinyImageFormat_ or _TIF_ as a form of namespaces, these will be left off for the API documentation.

The basic unit is the block, each image format has a 3D size that represents the smallest quantum of data you can work with. For basic image formats this is a 1x1x1 pixel block, meaning you can fetch and put single pixels of the image. However many other image formats have block larger than this. The DXBC formats are all 4x4x1 as thats the size of the compressed data. The smallest quantum you can fetch or put is a 4x4 pixel block.
Another common use of blocks is to pack non machine word aligned image format (like 1 bit per pixel images) and also pixel format with different frequency (I.e 4:2:0 video formats, that store channels at different rates).

The smallest unit the API uses is an 8 bit byte, smaller formats either have large block size or multiple channels are packed together to 8 or more bits.
E.g.
R4G4 is an 8 bit byte encoding 2 4 bit channels
R1 is an 8 bit byte encoding 8 pixels together (has a block size of 8x1x1)

## Base 

The base section has the main enumeration simply called _TinyImageFormat_. Here these is _TinyImageFormat_Count_ values, with each being a different image format. Internally image formats are split into ‘namespaces’ which are used to seperate very different types of image format, whilst this doesn’t technically affect the _TinyImageFormat_ naming, its usually possible to see parts of it (I.e. ASTC is a namespace and all ASTC pixel formats have ASTC in the name).

Most image formats come from the Pack namespace which allows pixel ranging from a single bit to 256 bit to be described. Packed formats have 1 to 4 channels, arbitary swizzling and support for constant 0 and 1. Pack enumeration names are read left to right, with the leftmost element being the lowest bits in the pixel, incrementing as you scan right across the name. The following a channel name is the number of bits that channel is encoded with.
E.g

_R8G8B8A8_

Red channel is 8 bits from the 0 to 7th bits of a 32 bit unsigned integer. Red = (P >> 0) & 0xFF

Green channel is 8 bits from the 8 to 15th bits of a 32 bit unsigned integer. Green = (P >> 8) & 0xFF

Blue channel is 8 bits from the 16 to 23rd bits of a 32 bit unsigned integer. Blue = (P >> 16) & 0xFF

Alpha channel is 8 bits from the 24 to 32nd bits of a 32 bit unsigned integer. Alpha = (P >> 24) & 0xFF

_A8B8G8R8_

Red channel is 8 bits from the 24 to 32nd bits of a 32 bit unsigned integer. Red = (P >> 24) & 0xFF

Green channel is 8 bits from the 16 to 23rd bits of a 32 bit unsigned integer. Green = (P >> 16) & 0xFF

Blue channel is 8 bits from the 8 to 16th bits of a 32 bit unsigned integer. Blue = (P >> 8) & 0xFF

Alpha channel is 8 bits from the 0 to 7th bits of a 32 bit unsigned integer. Alpha = (P >> 0) & 0xFF

Each packed channel also has a type, in almost every packed image format this is the same for all channels and in the case the type is specified just once at the end of the name, in the multiple type case the name is after the bit size for each channel
Types are
* _UNORM_ - decoded values are between 0 and 1
* _SNORM_ - decoded values are between -1 and 1
* _UINT_ - decoded values are between 0 and 2^bits-1
* _SINT_ - decoded values are between -2^(bits-1) and 2^(bits-1)-1 
* _UFLOAT_ - decoded values are positive floating point numbers
* _SFLOAT_ - decoded values are signed float points numbers
* _SBFLOAT_ - decode value is a 32 bit float with lower 16 mantissa bits being 0 (Brain Floats)

E.g.

_R8G8B8A8_UNORM_ - each channel is decoded to a normalised 0 to 1

_R8_UNORM_G8_SNORM_ -  would be R channel decoded 0 to 1 and a G channel decoded to -1 to 1

Pack namespace formats have a block size of 1x1x1 in most cases, exceptions being the formats that are less than 8 bits. For these multiple pixels are packed up to the minimum size of 8 bit bytes.

