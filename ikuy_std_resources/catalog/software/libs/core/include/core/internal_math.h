// MIT Licensed (for full license see LICENSE file)

// Math has no designs on being the fastest, most comprehensive or even most
// correct maths library.
// Its one purpose is to be portable, tested and available everywhere.
// Its for the 'normal' everyday math usage that probably won't need
// perfect alignment, SIMD or exact precision ulp guarentees. There are plenty
// of tasks that don't need that. So this is small, portable
// and perfect for API interfaces and little bits of portable maths.
//

// Functions supported for unsigned scalar types (float used as exampler)
// ---------
// Math_Min_F(float const v, float const a) = v < a ? v : a
// Math_Max_F(float const v, float const a) = v > a ? v : a
// Math_Clamp_F(float const v, float const a, float const b) = min(max(v, a), b)
// Math_Equal_F(float const a, float const b) = a == b
// Math_RoundUpTo_F(float const a, float const multiple) = a rounded up to a multiple
//
// Functions supported for signed scale types (float used as exampler), all unsigned plus
// ---------
// Math_Abs_F(float const a) = a < 0 ? -a : a
//
// Functions supported for real scalar types (float used as exampler), as signed plus
// ---------
// Math_Lerp_F(float const a, float const b, float t) = a + (b - a) * t
// Math_ApproxEqual_F(float const a, float const b, float epsilon) = abs(b - a) < epsilon
// Math_IsNan_F(float const in) = isnan(in)
// Math_Saturate_F(float const in) = min(max(v, 0), 1)
// Math_Pi_F() = pi
// Math_PiOverTwo_F() = pi / 2
// Math_TwoPi_F() = pi * 2
// Math_DegreesToRadians_F(float const input) = radian version of input angle in degrees
// Math_RadiansToDegrees_F(type const input) = degree version of input angle in radians
// Math_Reciprocal_F(float const a) = 1 / a
// Math_Sign_F(float const a) = -1 if a < 0 or 1 if a > 0 or 0 if a == 0
// Math_Sqrt_F(float const a) sqrt(a)
// Math_ReciprocalSqrt_F(float const a) 1 / sqrt(a)

// Functions supported for unsigned integer types (uint32_t used as exampler)
// Math_IsPowerOfTwo_U32(uint32_t const x) = true if x is power of 2, x == 0 return true
// Math_NextPowerOfTwo_U32(uint32_t const x) = next power of 2 greater than x, x == 0 returns 1
// Math_ClosestPowerOfTwo_U32(uint32_t const x) = closest power of 2 greater or less than x, x == 0, returns 0
// Math_LogTwo_U32(uint32_t const x) = highest bit set in x
// Math_PowTwo_U32(uint32_t const x) = 1 shifted right by x (LogTwo and PowTwo are inverses)

/// Additional some functions are not supported across the entire range of types
/// these are for specific (or a few types) so are not autogenerated by the macro
/// system used to build the generic CMath types
// TODO Math_Float2Half(float f) = float in, uint16_t encoded half out
// TODO Math_Half2Float(uint16_t h) = uint16_t encoded half in, float out
/// TODO sqrt functions use system double sqrt for all types needs replacing
/// Some functions can be defined for integer only types, at the moment real
/// use same base functions as integer meaning those can't be easily shared

#include "bitops.h"

#define MATH_FM_CREATE_UNSIGNED(postfix, type) 																				\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Min##_##postfix(type const v, type const a) { return (v < a) ? v : a; } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Max##_##postfix(type const v, type const a) { return (v > a) ? v : a; } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Clamp##_##postfix(type const v, type const a, type const b) { return Math_Min##_##postfix(Math_Max##_##postfix(v, a), b); } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT bool Math_Equal##_##postfix(type const a, type const b) { return a == b; } 				\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_RoundUpTo##_##postfix(type const v, type const m) { return ((v + m - 1) / m) * m; }

#define MATH_FM_CREATE_SIGNED(postfix, type) \
MATH_FM_CREATE_UNSIGNED(postfix, type) \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Abs##_##postfix(type const a) { return (a < 0) ? -a : a; }

#define MATH_FM_CREATE_REAL(postfix, type) 																						\
MATH_FM_CREATE_SIGNED(postfix, type) 																									\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT bool Math_ApproxEqual##_##postfix(type const a, type const b, type const epsilon) { return (Math_Abs##_##postfix(b - a) <= epsilon); } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT bool Math_IsNan##_##postfix(type const a) { return a != a; } 											\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Saturate##_##postfix(type const x) { return Math_Clamp##_##postfix(x, (type)0, (type)1); } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Pi##_##postfix() { return (type) (3.14159265358979323846264338327950L); } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_PiOverTwo##_##postfix() { return Math_Pi##_##postfix() / 2; } 								\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_TwoPi##_##postfix() { return 2 * Math_Pi##_##postfix(); } 									\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_DegreesToRadians##_##postfix(type const val) { return val * (Math_Pi##_##postfix() / 180); } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_RadiansToDegrees##_##postfix(type const val) { return (180 * val) / Math_Pi##_##postfix(); } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_Reciprocal##_##postfix(type const a) { return 1 / a; } 									\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT int Math_Sign##_##postfix(type val) { return (0 < val) - (val < 0); }                                                                  \

//CONST_EXPR ALWAYS_INLINE type Math_Sqrt##_##postfix(type const a) { return (type)sqrt((double)a); } 				CONST_EXPR ALWAYS_INLINE type Math_ReciprocalSqrt##_##postfix(type const a) { return 1 / (type)sqrt((double)a); }

#if MATH_FM_USE_BUILTIN == 1
// use gcc builtin
#define MATH_FM_CREATE_UNSIGNED_INTEGER_MAYBE_BUILTIN(postfix, type) 										\
CONST_EXPR ALWAYS_INLINE type Math_NextPowerOfTwo##_##postfix(type x) {     						\
	return x <= 1 ? 1 : ((type)1) << ((sizeof(type) * 8) - BitOp_Clz##_##postfix(x-1));  	\
} 																																											\
CONST_EXPR ALWAYS_INLINE type Math_LogTwo##_##postfix(type const v) { 									\
	return (sizeof(type) * 8) - BitOp_Clz##_##postfix(v) - 1;															\
}
#else
// Use generic not builtin functions
#define MATH_FM_CREATE_UNSIGNED_INTEGER_MAYBE_BUILTIN(postfix, type) 										\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_NextPowerOfTwo##_##postfix(type x) { 								\
	if(x <= 0) return 1; 																																	\
	x = x - 1; 																																						\
	if(sizeof(type) >= 8) { x |= ((uint64_t)x) >> 32; } 																	\
	if(sizeof(type) >= 4) { x |= ((uint32_t)x) >> 16; } 																	\
	if(sizeof(type) >= 2) { x |= ((uint16_t)x) >> 8; } 																		\
	x |= x >> 4; 																																					\
	x |= x >> 2; 																																					\
	x |= x >> 1; 																																					\
	return x + 1; 																																				\
} 																																											\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_LogTwo##_##postfix(type const v) {		 								\
	uint8_t r = 0; 																																				\
	type t = v; 																																					\
	if(sizeof(type) >= 8) { 																															\
		uint32_t tt = ((uint64_t)t) >> 32; 																									\
		r = r + (tt ? 32 : 0); 																															\
		t = tt ? tt : (t & 0xFFFFFFFF); 																										\
	} 																																										\
	if(sizeof(type) >= 4) { 																															\
		uint16_t tt = ((uint32_t)t) >> 16; 																									\
		r = r + (tt ? 16 : 0); 																															\
		t = tt ? tt : (t & 0xFFFF); 																												\
	} 																																										\
	if(sizeof(type) >= 2) { 																															\
		uint8_t tt = ((uint16_t)t) >> 8; 																										\
		r = r + (tt ? 8 : 0); 																															\
		t = tt ? tt : (t & 0xFF); 																													\
	} 																																										\
	uint8_t tt = ((uint8_t)t) >> 4; 																											\
	r = r + (tt ? 4 : 0); 																																\
	t = tt ? tt : (t & 0xF); 																															\
	uint8_t const logTable[16] = {0, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3}; 				\
	return r + logTable[(uint8_t)t]; 																											\
}
#endif

#define MATH_FM_CREATE_UNSIGNED_INTEGER(postfix, type)							 										\
MATH_FM_CREATE_UNSIGNED(postfix, type)                 																	\
MATH_FM_CREATE_UNSIGNED_INTEGER_MAYBE_BUILTIN(postfix, type) 														\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT bool Math_IsPowerOfTwo##_##postfix(type const x) { return (x & (x - 1)) == 0; } \
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_ClosestPowerOfTwo##_##postfix(type const x) { 				\
	type upow2 = Math_NextPowerOfTwo##_##postfix(x); 																			\
	if (4 * x < 3 * upow2) return upow2 >> 1; 																						\
	else return upow2; 																																		\
}																																												\
CONST_EXPR ALWAYS_INLINE WARN_UNUSED_RESULT type Math_PowTwo##_##postfix(type const v) { 									\
return 1 << v;																																					\
}

#define MATH_FM_CREATE_SIGNED_INTEGER(postfix, type) \
MATH_FM_CREATE_SIGNED(postfix, type)

