#pragma once
#ifdef __cplusplus
EXTERN_C
{
#endif

extern uint16_t crctab[];
extern uint32_t cr3tab[];

/*
 * updcrc macro derived from article Copyright (C) 1986 Stephen Satchell.
 *  NOTE: First srgument must be in range 0 to 255.
 *        Second argument is referenced twice.
 *
 * Programmers may incorporate any or all code into their programs,
 * giving proper credit within the source. Publication of the
 * source routines is permitted so long as proper credit is given
 * to Stephen Satchell, Satchell Evaluations and Chuck Forsberg,
 * Omen Technology.
 */
#define updcrc(cp, crc) ( crctab[(((crc) >> 8) & 255)] ^ ((crc) << 8) ^ (cp))
#define UPDC32(b, c) (cr3tab[((int)(c) ^ (b)) & 0xff] ^ (((c) >> 8) & 0x00FFFFFF))

#ifdef __cplusplus
}
#endif
