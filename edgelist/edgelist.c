#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to print the edge list of a graph given the adjacency matrix
int main ( int argc, char* argv[] ) {

    // FIRST, READ THE ADJACENCY MATRIX FILE
    AdjacencyListNode* adjacencyList = NULL;//pointer to adjlist node
    size_t list = adjMatrixToList(argv[1], &adjacencyList);//reads file
    /* ... */

    // NEXT, TRAVERSE THE ADJACENCY LIST AND PRINT EACH EDGE, REPRESENTED AS A PAIR OF NODES
    // Example of traversing the adjacency list is in the freeAdjList() function in graphutils.h
    /* ... */
    for( int i = 0; i < list; i++){//iterate through list
        AdjacencyListNode* adjptr = adjacencyList[i].next;//pointer to first adj node of source node in list, adjlist[i] is array element at index i, .next is the pointer to the first adj node of the i node or the source node
        
        while (adjptr != NULL){//check if its not null
            long int temp = adjptr -> graphNode;//index of adj node
            printf("%d %ld\n", i, temp);//print edge representative of cur adj node.
            adjptr = adjptr -> next;//updates the after pointer
        }
    }

    // NOW, BE SURE TO FREE THE ADJACENCY LIST
    /* ... */
    freeAdjList(list, adjacencyList);//free mem

    return EXIT_SUCCESS;
}
