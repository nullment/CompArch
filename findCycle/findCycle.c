#include "../graphutils.h"

// A program to find a cycle in a directed graph

// You may use DFS or BFS as needed
/* ... */
void dfs(size_t graphNodeCount, AdjacencyListNode* adjacencyList, int nodeInput, int* cycle, int tracker, bool* isCyclic, bool* foundCycle, int* cycleNodes) {
    cycle[tracker] = nodeInput;
    tracker++;
    AdjacencyListNode* node = &adjacencyList[nodeInput];

    while (node -> next != NULL) {
        int nextNode = node -> next -> graphNode;
        bool visited = false;
        for (int i = 0; i < tracker; i++) {
            if (cycle[i] == nextNode) {
                visited = true;
                *isCyclic = true; // Update isCyclic if a cycle is found
                if (*foundCycle == 0) { // Output the cycle if we haven't found one already
                    for (int j = i; j < tracker; j++) {
                        printf("%d ", cycle[j]);
                        cycleNodes[j-i] = cycle[j];
                    }
                    printf("\n");
                    *foundCycle = true;
                }
                break;
            }
        }
        if (visited == 0 && *isCyclic == 0) { // If isCyclic is true, we can stop exploring further
            dfs(graphNodeCount, adjacencyList, nextNode, cycle, tracker, isCyclic, foundCycle, cycleNodes);
        }
        node = node -> next;
    }
}
//     for (int i = 0; i < pathfinder; i++) {
//         printf("%d ", path[i]);
//     }
//     printf("\n");
// }

// void printStack(bool* stack, size_t graphNodeCount) {
//     printf("Stack: ");
//     for (unsigned i = 0; i < graphNodeCount; i++) {
//         printf("%d ", stack[i]);
//     }
//     printf("\n");
// }

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList;
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);

    /* ... */
    
    
    bool isCyclic = false;
    bool foundCycle = false;
    int cycleNodes[graphNodeCount];

    
    for (unsigned source = 0; source < graphNodeCount; source++) {
        int cycle[graphNodeCount];
        dfs(graphNodeCount, adjacencyList, source, cycle, 0, &isCyclic, &foundCycle, cycleNodes); 
        if (foundCycle) { // If a cycle is detected, we can stop exploring further
            break;
        }
    }
    if (!isCyclic) { printf("DAG\n"); }
    
    freeAdjList ( graphNodeCount, adjacencyList );
    return EXIT_SUCCESS;
}