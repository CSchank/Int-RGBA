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

#include "intrgba.h"
#include <stdio.h>

R fgetR(RGBA rgba){
	return (rgba & 0xFF000000) >> 24;
}

G fgetG(RGBA rgba){
	return (rgba & 0xFF0000) >> 16;
}

B fgetB(RGBA rgba){
	return (rgba & 0xFF00) >> 8;
}

A fgetA(RGBA rgba){
	return rgba & 0xFF;
}

RGBA fsetR(RGBA rgba, R r){
	return (r << 24) + (rgba & 0x00FFFFFF);
}

RGBA fsetG(RGBA rgba, G g){
	return (g << 16) + (rgba & 0xFF00FFFF);
}

RGBA fsetB(RGBA rgba, B b){
	return (b << 8) + (rgba & 0xFFFF00FF);
}

RGBA fsetA(RGBA rgba, A a){
	return a + (rgba & 0xFFFFFF00);
}

RGBA fmakeRGBA(R r, G g, B b, A a){
	return (r << 24) + (g << 16) + (b << 8) + a;
}

void fprintRGBA(RGBA rgba){
	printf("(%d,%d,%d,%d)\n", getR(rgba), getG(rgba), getB(rgba), getA(rgba));
}