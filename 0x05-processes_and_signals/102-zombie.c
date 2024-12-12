#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void)
{
    int pid1 = fork();
    printf("hi\n");
    int pid2 = fork();

    if (pid1 == 0)
    {
        wait(NULL);
        printf("\n\nhi dear\n");
        printf("%d\n", getpid());
    }
    else if (pid2 == 0)
    {
        sleep(2);
        printf("\nhello\n");
        printf("%d\n\n", getpid());
    }
    else
    {
        sleep(3);
        printf("how're you\n");
        printf("%d\n\n", getpid());
    }
    return (0);
}