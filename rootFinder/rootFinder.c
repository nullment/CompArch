#include <stdlib.h>
#include <stdio.h>
#include <float.h>

double fabs (double value) {
    return value<0.0 ? -value : value;
}

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // The problem we are trying to solve is:
    // r^n = x
    // given n and x, find r.
    // n is a positive integer larger than 0.
    // x is a positive floating point value.
    // https://en.wikipedia.org/wiki/Nth_root
    // r needs to be found such that r is within the answer value specified by precision.

    double x;
    fscanf(fp, "%lf", &x);

    size_t n;
    fscanf(fp, "%ld", &n);

    double precision;
    fscanf(fp, "%lf", &precision);

    // The easiest way to solve this in C is to invoke the pow() function as follows.
    // Unfortunately, as part of this assignment we are not allowing importing math.h.
    // Even if you import math.h, that Makefile does not link the math library.
    // So, you will need to write a separate algorithm to find the n-th root.
    // printf("%f", pow(x, 1.0/n));

    // There are many algorithms that can find the n-th root (Newton-Raphson, etc.).
    // A straightfoward one for our purposes is a binary search along the number line.
    // You should review how the binary search algorithm works.

    double guess_r_max = x<1.0 ? 1.0 : x; //sets the maximum possible value for the nth root to be x if x is less than or equal to 1, and 1 if x is greater than 1
    double guess_r_min = 0.0; //sets the minimum possible value for the nth root to be 0
    double guess_r = (guess_r_max + guess_r_min) / 2.0;//initializes the initial guess for the nth root to be the midpoint between guess_r_max and guess_r_min
    /* ... */

    double guess_r_old = guess_r;//nitializes a variable to store the previous guess for later comparison
    double error = DBL_MAX;//initializes the error to be the maximum possible value of a double to ensure that the error is always initially greater than the desired precision

    while (precision / 100 < fabs(error)) {//is the main loop that continues until the error is less than the desired precision. The precision is divided by 100 to convert it from percentage to decimal, and fabs is used to ensure the error is always positive
        double iterationStorage = 1.0;//initializes a variable to store the value of guess_r to the power of n for each iteration.
        for (int i = 0; i < n; i++) {//calculates the value of guess_r to the power of n using a loop that multiplies guess_r by itself n times.
            iterationStorage *= guess_r;
        }
        error = iterationStorage - x;//calculates the error between the actual value x and the calculated value of guess_r to the power of n
        if (error > 0.0) {//updates the maximum or minimum guess based on whether the error is positive or negative
            guess_r_max = guess_r;
        } else {
            guess_r_min = guess_r;
        }
        guess_r_old = guess_r;//stores the current guess as the previous guess for the next iteration
        guess_r = (guess_r_max + guess_r_min) / 2.0;//calculates the new guess as the midpoint between the updated maximum and minimum guesses
        if (guess_r == guess_r_old) {//checks if the new guess is the same as the previous guess, and if so, breaks out of the loop to avoid an infinite loop
            break;
        }
        /* ... */
    }

    printf("%.15f\n",guess_r); // print with default precision

    return EXIT_SUCCESS;

}
