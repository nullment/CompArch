#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <assert.h>

size_t mulOpCount = 0;
bool set = false;

void printLog ( void ) {
    FILE *fp = fopen("mul_op_count.txt", "w");
    fprintf(fp, "%ld", mulOpCount);
    fclose(fp);
}

unsigned int mul (
    unsigned int multiplier,
    unsigned int multiplicand
) {
    if (!set) {
        atexit(printLog);
        set = true;
    }
    mulOpCount++;//keep tracks of number of mul ops performed during the matrix multiplcation
    return multiplier * multiplicand;//multiplies two numbers
}

void matMul (//takes in two matrices and their dimensions by iterationg over rows and col stores resul in matMulProduct
    unsigned int l,//number of rows in the first matrix
    unsigned int m,//number of columns in first matrix and number of rows in second
    unsigned int n,//number of columns in the second matrix
    int** matrix_a,
    int** matrix_b,
    int** matMulProduct//result stored here
) {

    // printf("l=%d\n", l);
    // printf("m=%d\n", m);
    // printf("n=%d\n", n);

    for ( unsigned int i=0; i<l; i++ ) {
        // printf("i=%d\n", i);
        for ( unsigned int k=0; k<n; k++ ) {
            // printf("k=%d\n", k);
            matMulProduct[i][k] = 0;
            for ( unsigned int j=0; j<m; j++ ) {
                matMulProduct[i][k] += mul ( matrix_a[i][j], matrix_b[j][k] );
            }
        }
    }

}
