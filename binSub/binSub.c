#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
// https://www.tutorialspoint.com/c_standard_library/limits_h.htm
#include <limits.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the minuend (number to be subtracted from)
    char buff;
    bool minuend[CHAR_BIT]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    for (int i=CHAR_BIT-1; 0<=i; i--) { // read MSB first as that is what comes first in the file
        /* ... */
        fscanf(fp, "%c", &buff);//reads first bit 
        if (buff == '1') {
            minuend[i] = true;
        } else {
            minuend[i] = false;
        }
    }

    // notice that you are reading two different lines; caution with reading
    /* ... */
    fscanf(fp, "%c", &buff);//helps skip \n


    // second, read the subtrahend (number to subtract)
    bool subtrahend[CHAR_BIT]; // suggested that you store bits as array of bools; subtrahend[0] is the LSB
    for (int i=CHAR_BIT-1; 0<=i; i--) { // read MSB first as that is what comes first in the file
        /* ... */
        fscanf(fp, "%c", &buff);
        if (buff == '1') {
            subtrahend[i] = true;
        } else {
            subtrahend[i] = false;
        }
    }

    // WE WILL DO SUBTRACTION BY NEGATING THE SUBTRAHEND AND ADD THAT TO THE MINUEND

    // Negate the subtrahend
    // flip all bits
    /* ... */
    for (int i=0; i<CHAR_BIT; i++) {
        subtrahend[i] = !subtrahend[i];//inverts value
    }

    // add one
    bool carry = true; // to implement the 'add one' logic, we do binary addition logic with carry set to true at the beginning
    for (int i=0; i<CHAR_BIT; i++) { // iterate from LSB to MSB
        /* ... */
        if (carry) {//checks if theres a carry from prev bit
            if (subtrahend[i]) {//if true
                subtrahend[i] = false;//flip 
            } else {
                subtrahend[i] = true;//flip current to true if not
                carry = false;//set carry false because no carry
            }
        }
    }                          

    // Add the minuend and the negated subtrahend
    bool difference[CHAR_BIT];//bool array, stores bits of diff between the min and subtra
    /* ... */
    carry = false; // initialize the carry to false
    for (int i=0; i<CHAR_BIT; i++) {
        int sum = minuend[i] + subtrahend[i] + carry;//computes sum of current bits
        if (sum == 0){
            difference[i] = false;
            carry = false;
        } else if (sum == 1){
            difference[i] = true;
            carry = false;
        } else if (sum == 2){
            difference[i] = false;
            carry = true;
        } else {
            difference[i] = true;
            carry = true;
        }
    }

    // print the difference bit string
    for (int i=CHAR_BIT-1; 0<=i; i--)
        printf("%d",difference[i]);

    return EXIT_SUCCESS;

}
