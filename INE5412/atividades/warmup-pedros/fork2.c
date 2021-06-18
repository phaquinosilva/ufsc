#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main() {
    pid_t pid;
    for (int i = 0; i < 4; ++i) {
        pid = fork();
        if (pid > 0) {
            printf("Processo pai %d criou o %d\n", getpid(), pid);
        } else {
            printf("Processo filho %d\n", getpid());
            exit(0);
        }
    }
    while(!wait(NULL));
    return 0;
}