#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "../matMul/matMul.h"

unsigned int cost (
    unsigned int matrixCount,
    unsigned int* rowSizes,
    unsigned int* colSizes
) {
    if ( matrixCount==1 ) { // Base case.
        return 0; // No multplication to be done.
    } else {

        unsigned int numPossibleSplits = matrixCount-1; // Think: if there are two matrices to multiply, there is one way to split.
        // AB: (A)(B)
        // ABC: (A)(BC) and (AB)(C)

        unsigned int costs[numPossibleSplits];
        for ( unsigned int split=0; split<numPossibleSplits; split++ ) {

            unsigned int l = rowSizes[0];
            assert ( colSizes[split] == rowSizes[split+1] );
            unsigned int m = colSizes[split];
            unsigned int n = colSizes[matrixCount-1];

            costs[split] =
                cost( split+1, rowSizes, colSizes ) + // cost of left subchain
                l * m * n + // cost of multiplying the two chains
                cost( matrixCount-split-1, rowSizes+split+1, colSizes+split+1 ); // cost of right subchain
        }

        unsigned int minCost = costs[0];
        for ( unsigned int split=1; split<numPossibleSplits; split++ ) {
            if ( costs[split]<minCost ) {
                minCost = costs[split];
            }
        }

        return minCost;
    }
}

void chainMul(unsigned int matrixCount, unsigned int* rowSizes, unsigned int* colSizes, int*** matrices, int** matChainMulProduct) {  
    if (matrixCount==1) {                             
        for (int i = 0; i < rowSizes[0]; i++) {   
            for (int j = 0; j < colSizes[0]; j++) {
                matChainMulProduct[i][j] = matrices[0][i][j];
            }
        }                               
    } else {
        unsigned int numPossibleSplits = matrixCount-1; // Think: if there are two matrices to multiply, there is one way to split.
        // AB: (A)(B)
        // ABC: (A)(BC) and (AB)(C)

        unsigned int costs[numPossibleSplits];
        for ( unsigned int split=0; split<numPossibleSplits; split++ ) {

            unsigned int l = rowSizes[0];// rows for A
            assert ( colSizes[split] == rowSizes[split+1] ); 
            unsigned int m = colSizes[split];// cols for A, rows for B
            unsigned int n = colSizes[matrixCount-1];// cols for B,

            costs[split] =
                cost( split+1, rowSizes, colSizes ) +  // cost of left subchain
                l * m * n + // cost of multiplying the two chains
                cost( matrixCount-split-1, rowSizes+split+1, colSizes+split+1 ); // cost of right subchain
        }

        unsigned int minCost = costs[0];
        int minIndex = 0;
        for ( unsigned int split=1; split < numPossibleSplits; split++ ) {
            if ( costs[split] < minCost ) {
                minCost = costs[split];
                minIndex = split;
            }
        }
        int temp = minIndex + 1;
        int** leftChain = malloc(rowSizes[0] * sizeof(int**));
        for (int i=0; i < rowSizes[0]; i++) {    
            leftChain[i] = malloc(colSizes[minIndex] * sizeof(int*));
        }
        chainMul(temp, rowSizes, colSizes, matrices, leftChain);

        int** rightChain = malloc(rowSizes[temp] * sizeof(int**)); 
        for (int i=0; i < rowSizes[temp]; i++) {     
            rightChain[i] = malloc(colSizes[matrixCount-1] * sizeof(int*));
        }
        chainMul(matrixCount - temp, rowSizes + temp, colSizes + temp, matrices + temp, rightChain);

        unsigned int l = rowSizes[0];// rows for A
        unsigned int m = colSizes[minIndex];// cols for A, rows for B     
        unsigned int n = colSizes[matrixCount-1];// cols for B,
        
        matMul(l, m, n, leftChain, rightChain, matChainMulProduct);
        
        for (int i=0; i < rowSizes[0]; i++) {    
            free(leftChain[i]);
        }
        free(leftChain);
        
        for (int i=0; i < rowSizes[temp]; i++) { 
            free(rightChain[i]);
        }
        free(rightChain);
    }
}

int main(int argc, char* argv[]) {
    unsigned int matrixCount;
    unsigned int* rowSizes;
    unsigned int* colSizes;
    int*** matrices;
    int** productMatrix;

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        exit(EXIT_FAILURE);
    }

    if (!fscanf(fp, "%d\n", &matrixCount)) {
        perror("reading the number of matrices failed");
        exit(EXIT_FAILURE);
    }

    rowSizes = calloc( matrixCount, sizeof(int) );
    colSizes = calloc( matrixCount, sizeof(int) );
    matrices = (int***) malloc(sizeof(int**)*matrixCount);
    for (unsigned int matIndex=0; matIndex<matrixCount; matIndex++) {

        unsigned int rows, cols;
        if (!fscanf(fp, "%d %d\n", &rows, &cols)) {
            perror("reading the dimensions of matrix failed");
            exit(EXIT_FAILURE);
        }
        rowSizes[matIndex] = rows;
        colSizes[matIndex] = cols;

        matrices[matIndex] = calloc( rows, sizeof(int*) );
        for ( unsigned int i=0; i<rows; i++ ) {
            matrices[matIndex][i] = calloc( cols, sizeof(int) );
            for ( unsigned int k=0; k<cols; k++ ) {
                int element;
                if (!fscanf(fp, "%d ", &element)) {
                    perror("reading the element of matrix failed");
                    exit(EXIT_FAILURE);
                }
                matrices[matIndex][i][k] = element;
            }
        }
    }

    // unsigned int mul_op_count = cost ( matrixCount, rowSizes, colSizes );
    // printf("%d\n", mul_op_count );
    
    productMatrix = malloc(rowSizes[0] * sizeof(int**));
    
    for (int i = 0; i < rowSizes[0]; i++) {
        productMatrix[i] = malloc((colSizes[matrixCount-1] * sizeof(int*)));
    }
    chainMul(matrixCount, rowSizes, colSizes, matrices, productMatrix);

    for (int i=0; i < rowSizes[0]; i++) {
        for (int j=0; j < colSizes[matrixCount-1]; j++) {
            printf("%d ", productMatrix[i][j]);
        }
        printf("\n");
    }
    
    for (int i = 0; i < rowSizes[0]; i++) {
        free(productMatrix[i]);
    }
    free(productMatrix);

    for (unsigned int matIndex=0; matIndex<matrixCount; matIndex++) {
        int rows = rowSizes[matIndex];
        for ( unsigned int i=0; i<rows; i++ ) {
            free(matrices[matIndex][i]);
        }
        free(matrices[matIndex]);
    }
    free(matrices);

    free(colSizes);
    free(rowSizes);
    fclose(fp);

    exit(EXIT_SUCCESS);
}