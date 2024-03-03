/* 
 * CS:APP Data Lab 
 * 
 * Jack Sangdahl (@waffle87 [github])
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically and a negative shift value results in zero.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES, FOLLOW THE DIRECTIONS in README.md
 */


#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  /*
   * use's de morgan's law of intersection:
   * x & y == ~~(x & y) == ~(~x | ~y)
   *
   * eg. (6 & 5)
   *   110
   * & 101
   *   100 (4)
   *
   * ~110 = 001
   * ~101 = 010
   *
   *   001
   * | 010
   *   011
   *
   * ~011 = 100 (4)
   */
  return ~(~x | ~y);
}
/* 
 * evenBits - return word with all even-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int evenBits(void) {
  //essentially turning 8-bit number into 32-bit number.
  int word = 85; //0b01010101
  /*
   * begin with 85 as it is the largest 8-bit number following [01] pattern.
   * shift all values left by one byte (0b0101010100000000) to make lower 8 bits 0
   * and use 'or' operator to flip bits compared to original state of'word', then
   * repeat with two bytes. (we can only do shifts of 8 and 16 bits at a time b/c
   * that's the size of the word we're or'ing it to)
   */
  word |= word << 8;  //0b101010101010101
  word |= word << 16; //0b1010101010101010101010101010101
  return word;
}
/*
 * isTmin - returns 1 if x is the minimum two's complement number, and 0 otherwise
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
int isTmin(int x) {
  /*
   * Tmin = 0x80000000 (0b10000000000000000000000000000000) aka INT_MIN for signed integers
   * first use '!x' to verify 'x' isn't zero
   * then add 'x' to test for overflow: (if 'x' != Tmin, there won't be any)
   * x = -2147483648
   *   +  2147483648
   *             = 0
   * !0 = 1
   * !x = 0
   *  | = 1 (tmin!!!)
   */
  return !x ^ !(x + x);
}
/* 
 * allEvenBits - return 1 if all even-numbered bits in word set to 1
 *   Examples allEvenBits(0xFFFFFFFE) = 0, allEvenBits(0x55555555) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int allEvenBits(int x) {
  /* all even bits:
   * ("even numbered bits" refers to bit position eg:
   *               0 2 4 6 8 etc.)
   * 0xFFFFFFFE (0b11111111111111111111111111111110) -> returns 0
   * 0x55555555 (0b01010101010101010101010101010101) -> returns 1
   * essentially need to check MSB & 1, so
   * shift 'x' right (arithmetically b/c signed value) sequentially
   * to put MSB in LSB, then compare it with 1, where '1' is the LSB
   */
  x &= x >> 16;
  x &= x >> 8;
  x &= x >> 4;
  x &= x >> 2;
  return x & 1;
}
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
  /*
   * n = 3   2   1   0
   * 0x[12][34][56][78]
   *
   * n == 0 -> no shift and return 'x & 0xFF'
   * n >  0 -> shift 'x' (8 * n) to right and return 'x & 0xFF'
   *
   * eg. n = 1
   * first shift 'x' left by '8 * n' bits:
   * 0b0001 << 3 = 0b1000 (0x08)
   * 0x12345678 >> 0x08 = 0x123456 (getting rid of last 'n' byte(s))
   * then use '& 0xFF' to get last bit of hexadecimal number:
   * 0x123456 & 0xFF = 0x56
   */
  return (x >> (n << 3)) & 0xFF;
}
/* 
 * isNegative - return 1 if x < 0, return 0 otherwise 
 *   Example: isNegative(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int isNegative(int x) {
  /*
   * if x < 0, MSB == 1
   * if x >= 0, MSB == 0
   * so we can simply check the MSB by shifting 'x'
   * right by 31 bits to put MSB in LSB position,
   * essentially making it 'x's value 0x01 or or 0x00
   * then use double not to either return 0 or 1
   * eg. MSB = 1 (negative):
   * !1 = 0, !0 = 1
   *
   * MSB = 0 (positive):
   * !0 = 1, !1 = 0
   */
  x >>= 31;
  return !!x;
}
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  /*
   * if (x != 0)
   *   return y
   * else
   *   return z
   *
   * create a mask based on 'x's value:
   * eg. x = 8            x =  0
   * !x =  0              !x =  1
   * ~0 = -1              ~0 = -1
   *    + -1                 +  0
   * return 'y' or 'z' based on 'x's value
   */
  int mask = (!x + ~0);
  return (y & mask) | (z & ~mask);
}
/*
 * ezThreeFourths - multiplies by 3/4 rounding toward 0,
 *   Should exactly duplicate effect of C expression (x*3/4),
 *   including overflow behavior.
 *   Examples: ezThreeFourths(11) = 8
 *             ezThreeFourths(-9) = -6
 *             ezThreeFourths(1073741824) = -268435456 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int ezThreeFourths(int x) {
  /*
   * '(x * 3/4)' can be expressed as '(x + x + x) >> 2'
   * broken down:
   * x * 3 == x + x + x
   * / 4 == >> 2
   *
   * however negative values require additional steps ('z' variable):
   * first check if number is positive or negative by arithmetically
   * shifting 'y' right by 31 bits (all 1's = -1 (negative)):
   * positive: z = 0
   * negative: z = -1
   * if 'z' is negative, add a bias of 3 to 'y'
   * finally shift 'y' right 2
   */
  //x = -9
  int y = x + x + x; //0b11100101 (-27)
  int z = y >> 31;   //0b11111111 (-1)
  z &= 3;            //0b00000011 (3)
  y += z;            //0b11101000 (-24)
  y >>= 2;           //0b11111010 (-6)
  return y;
}
/* 
 * isNonNegative - return 1 if x >= 0, return 0 otherwise
 *   Example: isNonNegative(-1) = 0.  isNonNegative(0) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 3
 */
int isNonNegative(int x) {
  //identical to isNegative, just return single !x, instead of !!x
  x >>= 31;
  return !x;
}
/* 
 * isNonZero - Check whether x is nonzero using
 *              the legal operators except !
 *   Examples: isNonZero(3) = 1, isNonZero(0) = 0
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 4 
 */
int isNonZero(int x) {
  /*
   * use 2's complement
   * if x == 0: '~x + 1 = 0'
   * ~0 = -1
   *    +  1
   *       0
   * otherwise, '~x + 1 != 0'
   * ~3 = -4
   *    +  1
   *      -3
   *
   * then shift this value right by 31 to place MSB in LSB
   * then check if 'x' is zero or not with x | x:
   * 3 | -1 = -1
   * or
   * 0 | 0 = 0
   *
   * use x & 1 to return either 0 or 1:
   *   0b0000
   * & 0b0000
   *        0
   * or
   *   0b1111
   * & 0b0001
   *        1
   */
  return ((x | (~x + 1)) >> 31) & 1;
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
  /*
   * think of binary search (divide and conquer)
   *              p1                p2
   * eg. 0b[1111111111110000][1111000011110000] (0xFFF0F0F0)
   *         p3        p4        p5        p6
   *     [11111111][11110000][11110000][11110000]
   * first check if p1 is all 1's,
   * if yes, repeat process in p3
   * if not, repeat process in p5
   */
  int y = !~x, res, shift;
  //check first 16 bits and append to 'res' if they exist
  //otherwise shift 'x' over by 16 so they're 0
  res = !(~x >> 16) << 4;
  x <<= res;
  //check last 8 bits (24-32)
  shift = !(~x >> 24) << 3;
  x <<= shift;
  res |= shift;
  //check last 4 bits
  shift = !(~x >> 28) << 2;
  x <<= shift;
  res |= shift;
  //check last 2 bits
  shift = !(~x >> 30) << 1;
  x <<= shift;
  res |= shift;
  //check last bit
  res ^= 1 & x >> 31;
  //return final count + 'y' to make it into 32 bit number
  return res + y;
}
/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples: trueThreeFourths(11) = 8
 *             trueThreeFourths(-9) = -6
 *             trueThreeFourths(1073741824) = 805306368 (no overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int trueThreeFourths(int x) {
  /* eg. x = -9
   * first check if 'x' is negative by shifting right 31 bits to access MSB:
   * -9 >> 31 = -1              (sign)
   * x & 3 can be used to calculate remainder of 'x / 4':
   * -9 & 3 = 3                 (rem)
   * calculate 'x / 4' next to avoid overflow:
   * -9 >> 2 = -3               (x)
   * calculate 'x * 3' by shifting left one bit and adding to existing value of 'x':
   * -3 << 1 = -6 + -3 = -9     (x)
   * inverse of 'x' to "prepare" for subtraction
   * 3 << 1 = 6 + 3 = 9         (rem)
   * -1 & 3 = 3 + 9 = 12        (rem)
   * add 'rem' and 'x'
   * 12 >> 2 = 3 + -9 = 6       (x)
   */ 
  int sign = x >> 31;
  int rem = x & 3;
  x >>= 2;
  x += x << 1;
  rem += rem << 1;
  rem += sign & 3;
  return x += rem >> 2;
}
/*
 * Extra credit
 */
/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
  return 2;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  return 2;
}
