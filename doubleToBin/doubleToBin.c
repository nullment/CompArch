#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>

#define EXP_SZ 11
#define FRAC_SZ 52

int main(int argc, char *argv[]) {

    // SETUP
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    double value;
    fscanf(fp, "%lf", &value);

    // the reference solution ('the easy way')
    // you are not allowed to print from this casted 'ref_bits' variable below
    // but, it is helpful for validating your solution
    //unsigned long int ref_bits = *(unsigned long int*) &value;
    
    // THE SIGN BIT
    bool sign = value<0.0;
    if (value == 0.0){//check if val is 0 
        double reciprocal = 1/value;//computes reciprocal
        sign = reciprocal<0.0;//checks if negative and assigns bool
    }
    printf("%d_",sign);
    //assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ))); // validate your result against the reference

    // THE EXP FIELD
    // find the exponent E such that the fraction will be a canonical fraction:
    // 1.0 <= fraction < 2.0
    double fraction = sign ? -value : value;

    signed short trial_exp=(1<<(EXP_SZ-1))-1;// start by assuming largest possible exp (before infinity)
    // do trial division until the proper exponent E is found

    int counter = 0;// keep track of the number of times the fraction part is divided by 2 or multiplied by 2
    while ( (fraction < 1 || fraction >= 2.0 ) && fraction != 0){ 
        if (fraction <  1 ){//checks if the fraction is less than 1 it multiplies the fraction by 2 and decreases the counter by 1
            fraction =  fraction * 2;
            counter--;
        } else if (fraction >= 2.0){//checks if the fraction is greater than or equal to 2 it divides the fraction by 2 and increases the counter by 1
            fraction /= 2;
            counter++;
        }
    }
    trial_exp = counter;//cant directly alter trial so this updates the trial exponent with the value of the counter variable

    //denormalized checker
    bool denormalized = false;//checks if float pt number is denorm
    unsigned short bias = (1<<(EXP_SZ-1))-1;//bias val
    signed short exp = trial_exp + bias;//gets actual exponent

    float posFracValStor = value;//stores the positive fraction value
    if (posFracValStor < 0){//checks if its negative and makes it positive
        posFracValStor = -posFracValStor;
    }
    if (posFracValStor <= 0){ //if less than equal to sets exp to 0 andd sets denorm to true, i.e float pt number is denormalized when exp is 0
        exp = 0;
        denormalized = true;
    }
    //printf("%d\n", exp);
   // printf("%f\n", fraction2);
   // printf(denormalized ? "true" : "false");

    for ( int exp_index=EXP_SZ-1; 0<=exp_index; exp_index-- ) {
        bool exp_bit = 1&exp>>exp_index;
        printf("%d",exp_bit);
       // assert (exp_bit == (1&ref_bits>>(exp_index+FRAC_SZ))); // validate your result against the reference
    }
    printf("_");
    
    // you get partial credit by getting the exp field correct
    // even if you print zeros for the frac field next
    // you should be able to pass test cases 0, 1, 2, 3

    // THE FRAC FIELD
    // prepare the canonical fraction such that:
    // 1.0 <= fraction < 2.0
    /* ... */
    if (fraction > 1) {//checks if frac is >1
        fraction -= 1;
    }
    if (denormalized){//checks denorm
        if(sign){//checks sign
            fraction = -value;//
        } else {
            fraction = value;
        }
        int exponent = 1 - bias;
        fraction /= pow(2, exponent);
    }

    bool frac_array[FRAC_SZ+1]; // one extra LSB bit for rounding
    bool round_bit = false; // initialize the least significant bit for rounding to 0
    for (int frac_index = FRAC_SZ; frac_index >= 0; frac_index--) {
        if (fraction >= 1) {// Step 1: subtract 1 from fraction if it is greater than or equal to 1
            fraction -= 1;
        }

        frac_array[frac_index] = (2 * fraction >= 1);// Step 2: set the current binary digit based on whether 2 times fraction is greater than or equal to 1
        fraction *= 2;// Step 3: multiply fraction by 2

        if (frac_index == 0 && fraction >= 1) {// Keep track of the least significant bit for rounding
            round_bit = true;
        }
    }

    // rounding
    if (round_bit) {
        bool carry = true;
        for (int i = FRAC_SZ; i >= 0; i--) {
            if (frac_array[i] && carry) {
                frac_array[i] = false;
            } else if (!frac_array[i] && carry) {
                frac_array[i] = true;
                carry = false;
            }
        }
    }

    for ( int frac_index=FRAC_SZ-1; 0<=frac_index; frac_index-- ) {
          bool frac_bit = frac_array[frac_index+1]; // skipping the extra LSB bit for rounding
          printf("%d", frac_bit);
          // assert (frac_bit == (1&ref_bits>>frac_index)); // validate your result against the reference
      }

}