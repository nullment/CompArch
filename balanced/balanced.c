#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

// Struct to hold the open and close braces and the pointer to the next element.
struct element {
    // char open; // not needed
    char close;
    struct element* next;
};

// Append the new element to the start of the stack
// This is one potential way to write this function signature
struct element* push ( struct element* stack,char close) {
    struct element* newElement = malloc(sizeof(struct element));// creates new "node"
    if (!newElement){
        return stack;
    }

    newElement -> close = close;
    newElement -> next = stack;
    return newElement;

    /* ... */
}

// Remove element from the top of the stack
char pop ( struct element** stack ) {

    if (*stack != NULL) {
        struct element* store = *stack;//stores the element from stack in a new element
        char close = store -> close;
        *stack = store -> next;
        free(store);
        return close;
        /* ... */
    } else {
        return '\0';
    }
}

int main(int argc, char* argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    struct element* stack = NULL;
    bool balanced = true;

    char buff;
    while ( fscanf(fp, "%c", &buff)==1 ) {

        switch(buff) {
            case '<' :
                stack = push(stack, '>');
                break;

            case '(' :
                stack = push(stack, ')');
                break;

            case '[' :
                stack = push(stack, ']');
                break;

            case '{' :
                stack = push(stack, '}');
                break;

            case '>' :
                if(pop(&stack) != '>'){
                    balanced = false;
                }
                break;
                
            case ')' :
                if(pop(&stack) != ')'){
                    balanced = false;
                }
                break;

            case ']' :
                if(pop(&stack) != ']'){
                    balanced = false;
                }
                break;

            case '}' :
                if(pop(&stack) != '}'){
                    balanced = false;
                }
                break;
                
            default :
                printf("Invalid character\n" );
                break;
        }
    }
    if (stack != NULL){// essentially an is empty protocol
        balanced = false;
    }
    /* ... */

    printf ( balanced ? "yes" : "no" );
    fclose(fp);
    return 0;
}