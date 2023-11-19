#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    signed int input;
    fscanf(fp, "%d", &input);

    // print bits; you will see this kind of for loop often in this assignment
    unsigned int bits = input;
    char hex[5] = {0}; // initialize array with 5 elements to 0
    for (int i=0; i<4; i++) {
        unsigned int chunk = bits & 0xF;//gets last four bits
        char charDigit;//temp char variable to store the hexadecimal digit
        if(chunk < 10){//if chunk has bits less than 10
            charDigit = chunk + '0';//adds ascii code 0 to get char digit
        }
        else{
            charDigit = chunk - 10 + 'A';//subtracts 10 from bit and adds ascii code A to get the char digit
        }
        hex[3-i] = charDigit;//assigns value char digit to the ith element in the hex array
        bits >>= 4;//shifts bits int by four bits to right
    }

    printf("%s\n", hex);

    return EXIT_SUCCESS;

}
