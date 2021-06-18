#include <stdio.h>
#include <unistd.h>

int main() {
    fork();
    printf("Novo processo criado!\n");
    return 0;
}