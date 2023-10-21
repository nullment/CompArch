#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

// Rutgers University 2021 Spring CS 211 Computer Architecture
// Assignment based on CS:APP Cache Lab

// 64-bit memory address
typedef unsigned long long int mem_addr_t;

// cache properties
unsigned char s = 0; // set index bits
unsigned short S = 1<<0; // set count

unsigned char E = 16; // way associative cache; lines per set

unsigned char b = 4; // block offset bits
// unsigned short B = 1<<4; // block size in bytes

// fully associative cache line
typedef struct cache_line {
    mem_addr_t tag;
    struct cache_line* next_cache_line;
} cache_line_t;

typedef struct fifo_cache_set {
    cache_line_t* front; // front (head) of the queue
    cache_line_t* back; // back (tail) of the queue
    unsigned char occupancy;
} fully_associative_fifo_cache_t;

// accessData - Access data at memory address addr.
void accessData (
    mem_addr_t address,
    fully_associative_fifo_cache_t* cache,
    unsigned int* hit_count, // If it is already in cache, increase hit_count
    unsigned int* miss_count, // If it is not in cache, bring it in cache, increase miss_count
    unsigned int* eviction_count // Also increase eviction_count if a line is evicted
) {

    // Cache indices for this address
    mem_addr_t tag = address >> (s+b);

    // Cache hit
    cache_line_t* curr_line = cache->front;
    while ( curr_line != NULL ) {
        if ( curr_line->tag == tag ) {
            (*hit_count)++;
            return;
        }
        curr_line = curr_line->next_cache_line;
    }

    // Otherwise, record a cache miss
    /* ... */
    (*miss_count)++;//indicate cache miss

    // If cache is full, evict oldest line due to FIFO cache replacement policy
    if ( cache->occupancy == E ) {//checks if the cache occupancy is equal to the maximum number of lines allowed
        // dequeue from front of FIFO, update occupancy, and record an eviction
        /* ... */
        cache_line_t* evict = cache->front;// creates a pointer that points to the front (head) of the cache
        cache->front = evict->next_cache_line;//updates the front (head) of the cache to point to the next line in the cache after the line that is being evicted
        cache->occupancy--;//This line decrements the occupancy of the cache by 1, as one line is being evicted
        (*eviction_count)++;//increments the eviction_count variable, which keeps track of the number of lines evicted from the cache
        free(evict);//frees mem
    }

    // Due to cache miss, enqueue cache line, and update occupancy
    /* ... */
    cache_line_t* line = (cache_line_t*) malloc(sizeof(cache_line_t));//malloc for a new cache line
    line->tag = tag;// sets tag of new cache line to calculated tag
    line->next_cache_line = NULL;//sets next cache line to null because it is last line
    if ( cache->front == NULL ) {//checks if empty
        cache->front = line;//sets front to point to new line
        cache->back = line;//sets back to point to new line
    } else {
        cache->back->next_cache_line = line;//updates next cache line pointer of back to point to new line ( enqueues it at the end of cache )
        cache->back = line;//updates back to new line ( setting it as new last line )
    }
    cache->occupancy++;//increases occupancy

}

int main(int argc, char* argv[]) {

    // path to memory trace
    if ( argc!= 2 ) {
        printf( "Usage: ./fullyAssociative <mem_trace_file>\n" );
        exit( EXIT_FAILURE );
    }
    char* mem_trace_file = argv[1];
    FILE *fp = fopen(mem_trace_file, "r");
    if (!fp) {
        fprintf(stderr, "Error opening file '%s'\n", mem_trace_file);
        exit( EXIT_FAILURE );
    }

    fully_associative_fifo_cache_t cache = { .front=NULL, .back=NULL, .occupancy=0 };
    // cache simulation statistics
    unsigned int miss_count = 0;
    unsigned int hit_count = 0;
    unsigned int eviction_count = 0;

    // Loop through until we are done with the file.
    size_t line_buffer_size = 256;
    char line_buffer[line_buffer_size];

    while ( fgets(line_buffer, line_buffer_size, fp) != NULL ) {

        // replay the given trace file against the cache
        if ( line_buffer[1]=='L' || line_buffer[1]=='S' || line_buffer[1]=='M' ) {
            char type = '\0';
            mem_addr_t address = 0;
            unsigned int length = 0;
            sscanf ( line_buffer, " %c %llx,%u", &type, &address, &length );

            if ( type=='L' || type=='S' || type=='M') {
                accessData(address, &cache, &hit_count, &miss_count, &eviction_count);
            }

            // If the instruction is M indicating L followed by S then access again
            if(type=='M')
                accessData(address, &cache, &hit_count, &miss_count, &eviction_count);
        }
    }

    cache_line_t* curr_line = cache.front;
    while ( curr_line != NULL ) {
        cache_line_t* temp = curr_line;
        curr_line = curr_line->next_cache_line;
        free(temp);
    }
    fclose(fp);

    /* Output the hit and miss statistics for the autograder */
    printf("hits:%d misses:%d evictions:%d\n", hit_count, miss_count, eviction_count);

    exit( EXIT_SUCCESS );
}
