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

#include "stdio.h"
#include "intrgba.h"

int main(){
	RGBA rgba = fmakeRGBA(255,17,240,50);
	fprintRGBA(rgba);

	rgba = fsetR(rgba, 123);
	fprintRGBA(rgba);
	rgba = fsetG(rgba, 145);
	fprintRGBA(rgba);
	rgba = fsetB(rgba, 34);
	fprintRGBA(rgba);
	rgba = fsetA(rgba, 255);
	fprintRGBA(rgba);

	R r = fgetR(rgba);
	G g = fgetG(rgba);
	B b = fgetB(rgba);
	A a = fgetA(rgba);
	printf("(%d,%d,%d,%d)\n", r, g, b, a);
}