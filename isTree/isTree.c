#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to determine whether an undirected graph is a tree

// A recursive function that returns true if no cycles found
bool isTreeDFS (
    size_t graphNodeCount,
    AdjacencyListNode* adjacencyList,
    bool* visited,
    graphNode_t parent,
    graphNode_t current
) {

    // First see if current node has already been visited, indicating a cycle found
    /* ... */
    if (visited[current]){
        return false;
    }

    // Current node was not already visited, so now mark it as visited
    /* ... */
    visited[current] = true;

    // Now iterate through each of the neighboring graph nodes
    AdjacencyListNode* neighbor = adjacencyList[current].next;//neighbor is next node
    while (neighbor) {
        if (neighbor->graphNode!=parent) {
            // If the neighbor nodes is not the parent node (the node from which we arrived at current), call DFS
            /* ... */
            if (isTreeDFS(graphNodeCount, adjacencyList, visited, current, neighbor->graphNode) == 0) {//checks if cycle exists, if it does itll return false.
                return false;
            }
        }
        neighbor = neighbor->next;//updates neighbor
    }

    // All DFS searches from current node found no cycles, so graph is a tree from this node
    return true;}

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;
    /* ... */
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);

    // Array of boolean variables indicating whether graph node has been visited
    bool* visited = calloc ( graphNodeCount, sizeof(bool) );
    /* ... */
    bool isTree = true;//base case isTree is true
    for (int i = 0; i < graphNodeCount; i++) {//iterate for however many nodes there are
        if (visited[i] == 0 && isTreeDFS(graphNodeCount, adjacencyList, visited, i, i) == 0){//FIRST check if the node has been visited, then check is the cycle exists
            isTree = false;
            break;//breaks out the for loop with the data from parameter
        }
    }
    freeAdjList(graphNodeCount, adjacencyList);//free adjlist mem
    free(visited);//free visited array mem
    /* ... */

    printf(isTree ? "yes" : "no");

    return EXIT_SUCCESS;
}
