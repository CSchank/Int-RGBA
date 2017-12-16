/*
 * C library for storing and manipulating 8-bit RGBA values as 32-bit unsigned integers.
 *
 * Author: Christopher W. Schankula
 * Last updated: December 16th, 2017
 * Code is licensed under the CC BY 4.0 license.
 *
 * THE CODE PROVIDED HEREIN IS PROVIDED "AS-IS"
 * THE AUTHOR ASSUMES NO RESPONSBILITY OR WARRANTY
 * FOR USE OF THE CODE PROVIDED HEREIN
 * EXTENSIVE TESTING OF THIS CODE IS REQUIRED
 * TO ENSURE ITS CORRECTNESS AS PART OF THE INTENDED
 * APPLICATION THEREOF
 */


/* Macros */
#define getR(rgba) ((rgba & 0xFF000000) >> 24)
#define getG(rgba) ((rgba & 0xFF0000) >> 16)
#define getB(rgba) ((rgba & 0xFF00) >> 8)
#define getA(rgba) ((rgba & 0xFF))
#define setR(rgba,r) ((r << 24) + (rgba & 0x00FFFFFF))
#define setG(rgba,g) ((g << 16) + (rgba & 0xFF00FFFF))
#define setB(rgba,b) ((b << 8) + (rgba & 0xFFFF00FF))
#define setA(rgba,a) (a + (rgba & 0xFFFFFF00))
#define makeRGBA(r,g,b,a) ((r << 24) + (g << 16) + (b << 8) + a)
#define printRGBA(rgba) printf("(%d,%d,%d,%d)\n", getR(rgba), getG(rgba), getB(rgba), getA(rgba));

typedef unsigned int RGBA;
typedef unsigned char R;
typedef unsigned char G;
typedef unsigned char B;
typedef unsigned char A;

/* Function Declarations */
RGBA fmakeRGBA(R r, G g, B b, A a);

R fgetR(RGBA rgba);
G fgetG(RGBA rgba);
B fgetB(RGBA rgba);
A fgetA(RGBA rgba);

RGBA fsetR(RGBA rgba, R r);
RGBA fsetG(RGBA rgba, G g);
RGBA fsetB(RGBA rgba, B b);
RGBA fsetA(RGBA rgba, A a);

void fprintRGBA(RGBA rgba);
