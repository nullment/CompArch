#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

// Rutgers University 2021 Spring CS 211 Computer Architecture
// Assignment based on CS:APP Cache Lab

// 64-bit memory address
typedef unsigned long long int mem_addr_t;

// cache properties
unsigned char s = 4; // set index bits
unsigned short S = 1<<4; // set count

unsigned char b = 4; // block offset bits
// unsigned short B = 1<<4; // block size in bytes

// direct mapped cache set/line
typedef struct cache_set_line {
    bool valid;
    mem_addr_t tag;
} cache_set_line_t;

typedef cache_set_line_t* cache_t;

// accessData - Access data at memory address address.
void accessData (
    mem_addr_t address,
    cache_t cache,
    unsigned int* hit_count, // If it is already in cache, increase hit_count
    unsigned int* miss_count, // If it is not in cache, bring it in cache, increase miss_count
    unsigned int* eviction_count // Also increase eviction_count if a line is evicted
) {

    // Cache indices for this address
    /* ... */
    mem_addr_t index = (address >> b) & (S - 1);    
    mem_addr_t tag = address >> (s + b);     

    // Cache hit
    if (cache[index].valid && cache[index].tag == tag) {
        (*hit_count)++;
        return;
    }

    // Otherwise, cache miss
    (*miss_count)++;

    // If cache set line already in use as indicated by the valid variable, then evict the existing cache set line
    if (cache[index].valid) {
        (*eviction_count)++;
    }
    cache[index].valid = true;
    cache[index].tag = tag;
}

int main(int argc, char* argv[]) {

    // path to memory trace
    if ( argc!= 2 ) {
        printf( "Usage: ./directMapped <mem_trace_file>" );
    }
    char* mem_trace_file = argv[1];
    FILE *fp = fopen(mem_trace_file, "r");
    if (!fp) {
        fprintf(stderr, "Error opening file '%s'\n", mem_trace_file);
        exit( EXIT_FAILURE );
    }

    // Allocate memory, write 0's for valid and tag and LRU
    cache_t cache = (cache_set_line_t*) calloc( S, sizeof(cache_set_line_t) );
    if (!cache) {
    fprintf(stderr, "Error allocating memory\n");
    exit(EXIT_FAILURE);
  }
    /* ... */
    unsigned int miss_counter = 0;
    unsigned int hit_counter = 0;
    unsigned int eviction_counter = 0;
    char line_buffer[256];
    char access_type;
    mem_addr_t address;
    unsigned int length;
    while (fgets(line_buffer, 256, fp) != NULL) {
        if (sscanf(line_buffer, " %c %llx,%u", &access_type, &address, &length) == 3 &&
            (access_type == 'L' || access_type == 'S' || access_type == 'M')) {
            accessData(address, cache, &hit_counter, &miss_counter, &eviction_counter);
            if (access_type == 'M') {
                accessData(address, cache, &hit_counter, &miss_counter, &eviction_counter);
            }
        }
    }
    for (int i  = 0; i < S; i++) {
        free(cache);
        cache = NULL;
    }
    fclose(fp);
    printf("hits:%u misses:%u evictions:%u\n", hit_counter, miss_counter, eviction_counter);
}
