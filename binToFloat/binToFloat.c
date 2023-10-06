#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define EXP_SZ 8//bits reserved for exponent
#define FRAC_SZ 23//bits reserved for the mantissa

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of float point number
    char buff;
    unsigned int binary = 0;
    for (int i=EXP_SZ+FRAC_SZ; 0<=i; i--) { // read MSB first as that is what comes first in the file
        /* ... */
        fscanf(fp, "%c", &buff);//read binary rep of floating point #
        if (buff == '1') {
            binary += 1 << i;
        } else {
            binary += 0;
        }//makes binary number
    }

    // float number = *(float *)&binary; // you are not allowed to do this.

    /* ... */
    bool sign = (0b001) & binary >> 31;//gets the sign of the floating point number

    // E
    /* ... */
    int expMask = ((1 << EXP_SZ) - 1);//mask to get exp bit from bin rep
    int exp = (binary >> FRAC_SZ) & expMask;//shifts FRAC_SZ to right to get EXP_SZ 
    int bias = (1 << (EXP_SZ - 1)) - 1;//gets bias value,  1 << 7 = 10000000 - 1 = 01111111 = 127
    int e = exp - bias;//gets the exponent value needed
    //int e = ((binary >> FRAC_SZ) & ((1 << EXP_SZ) - 1)) - ((1 << (EXP_SZ - 1)) - 1);//one line

    // M
    /* ... */
    int mantissaMask = (1 << FRAC_SZ) - 1;
    int mantissa = mantissaMask & binary;
    mantissa += 1 << FRAC_SZ;
    double m = (double)mantissa / (double)(1 << FRAC_SZ);


    // https://www.tutorialspoint.com/c_standard_library/c_function_ldexp.htm
    double number = ldexp ( m, e );
    number = sign ? -number : number;
    printf("%e\n", number);

    return EXIT_SUCCESS;

}