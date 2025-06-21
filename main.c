// test/main.c
#include <stdio.h>
#include <string.h>
#include "libasm.h"

int main(void)
{
    const char *s = "Hello, asm!";
    // char buf[20];

    printf("len   : %zu\n", ft_strlen(s));
    // printf("strcpy: %s\n", ft_strcpy(buf, s));
    // printf("strcmp: %d\n", ft_strcmp(s, buf));

    // ssize_t n = ft_write(1, "write OK\n", 9);
    // printf("write→%zd bytes\n", n);

    // char *dup = ft_strdup(s);
    // printf("dup   : %s\n", dup);
    // free(dup);
    return 0;
}
