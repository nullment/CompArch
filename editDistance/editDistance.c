#include <stdlib.h>
#include <stdio.h>
#include <string.h>

size_t min ( size_t x, size_t y ) {
    return x<y ? x : y;
}

int levenshtein ( char* source, char* target ) {

    // printf( "source=%s\n", source );
    // printf( "target=%s\n", target );

    int sourcelen = strlen(source);
    int targetlen = strlen(target);

    int dynamicarr[sourcelen + 1][targetlen + 1];

    for( int i = 0; i <= sourcelen; i++){
        for( int j = 0; j <= targetlen; j++){
            if (i == 0){
                dynamicarr[i][j] = j;
            } 
            else if ( j == 0){
                dynamicarr[i][j] = i;
            }
            else if (source[i-1] == target[j-1]){
                dynamicarr[i][j] = dynamicarr[i-1][j-1];
            }
            else {
                int sourcedist = min(dynamicarr[i][j-1], dynamicarr[i-1][j]);
                dynamicarr[i][j] = 1 + min(sourcedist, dynamicarr[i-1][j-1]);
            }
        }
    }
    return dynamicarr[sourcelen][targetlen];
}

int main(int argc, char* argv[])
{

    FILE* inputFile = fopen(argv[1], "r");
    if (!inputFile) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    char source[32];
    char target[32];

    fscanf (inputFile, "%s\n%s", source, target);

    printf("%d\n", levenshtein( source, target ));

    return EXIT_SUCCESS;

}
