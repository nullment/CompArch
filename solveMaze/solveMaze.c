#include "../graphutils.h" // header for functions to load and free adjacencyList
#include "../queue/queue.h" // header for queue

// A program to solve a maze that may contain cycles using BFS

int main ( int argc, char* argv[] ) {

    // First, read the query file to get the source and target nodes in the maze
    /* ... */
    FILE* query = fopen(argv[2], "r");
    graphNode_t source, target;
    fscanf(query, "%ld", &source);
    fscanf(query, "%ld", &target);
    fclose(query);

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);//creates graph
    
    /* ... */

    // USE A QUEUE TO PERFORM BFS
    Queue queue = { .front=NULL, .back=NULL };

    // An array that keeps track of who is the parent node of each graph node we visit
    graphNode_t* parents = calloc( graphNodeCount, sizeof(graphNode_t) );
    for (size_t i=0; i<graphNodeCount; i++) {
        parents[i] = -1; // -1 indicates that a nodes is not yet visited
    }

    parents[source] = source;//sets source node as its own parent in order to continue
    /* ... */
    graphNode_t current = source;
    //AdjacencyListNode* adjacent = &adjacencyList[*current];

    while ( current != target ) {// so long as we haven't found the target node yet, 
        AdjacencyListNode* adjacent = &adjacencyList[current];
        while ( adjacent ) {
            if ( parents[adjacent -> graphNode] == -1 ) {

                enqueue( &queue, adjacent);
                parents[adjacent -> graphNode] = current;
                
            }
            adjacent = adjacent -> next;
        }

        // Visit the next node at the front of the queue of nodes to visit
        AdjacencyListNode* nextNode = dequeue(&queue);
        current = nextNode -> graphNode;
        
    }

    // Now that we've found the target graph node, use the parent array to print maze solution
    // Print the sequence of edges that takes us from the source to the target node
    /* ... */
    graphNode_t temp = target;
    while(temp != source){
        printf("%lu %lu\n", parents[temp], temp);
        temp = parents[temp];
    }
    // free any queued graph nodes that we never visited because we already solved the maze
    while ( queue.front ) {
        dequeue(&queue);
        /* ... */
    }
    free (parents);
    freeAdjList ( graphNodeCount, adjacencyList );

    return EXIT_SUCCESS;
}
