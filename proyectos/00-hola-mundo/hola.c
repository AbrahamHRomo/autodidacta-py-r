#include <stdio.h>

int main(int argc, char **argv) {
    const char *nombre = (argc > 1) ? argv[1] : "mundo";
    printf("Hola, %s\n", nombre);
    printf("C: compilado, tipos explícitos, memoria manual\n");
    return 0;
}
