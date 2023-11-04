#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

// A translation from pseudocode to C code
// https://en.wikipedia.org/wiki/Quicksort
// Hoare's partition scheme
// Divides array into two partitions
int partition ( int size, int array[size] ) {

    // Pivot value
    int pivot = array[ (size-1)/2 ]; // The value in the middle of the array

    // Left index
    int left = -1;

    // Right index
    int right = size;

    while (true) {

        // Move the left index to the right at least once and while the element at
        // the left index is less than the pivot
        do left++; while (array[left] < pivot);

        // Move the right index to the left at least once and while the element at
        // the right index is greater than the pivot
        do right--; while (pivot < array[right]);

        // If the indices crossed, return
        if ( right<=left ) return right;

        // Swap the elements at the left and right indices
        int temp = array[left];
        array[left] = array[right];
        array[right] = temp;
        
    }
}
void QuickSort(int size, int array[size]){
    if ( size == 1 ){
        return;
    } else {
    int pivot = partition(size, array);
    QuickSort(pivot + 1, array);
    QuickSort(size - (pivot + 1), &array[pivot + 1]);

    }
}
// void helper(int size, int array[size]){
//     QuickSort(size, array, size);
// }
/**/ 
int quickselect(int length, int *array, int kth){
    QuickSort(length, array);
    
    return *(array + kth);
}
int main(int argc, char* argv[])
{

    FILE* inputFile = fopen(argv[1], "r");
    if (!inputFile) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    char buf[256];

    char* len_string = fgets(buf, 256, inputFile);
    int len = atoi(len_string);//inputs length
    char* kth_string = fgets(buf, 256, inputFile);
    int kth = atoi(kth_string);//inputs index needed
    fgets(buf, 256, inputFile);

    //printf("%d\n", kth);

    int* array = calloc( len, sizeof(int) );//calloc() function in C is used to allocate a specified amount of memory and then initalize it to zero

    for (int i=0; i<len; i++) {
        char* int_string = fgets(buf, 256, inputFile);
        array[i] = atoi(int_string);
        
    }//fills array

    printf("%d", quickselect ( len, array, kth ));
    // partition(len, array);
    // for (int i = 0; i < len; i++){
    //     printf("%d\n", array[i]);
    // }
    free(array);

    return EXIT_SUCCESS;

}

