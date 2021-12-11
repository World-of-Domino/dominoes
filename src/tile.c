#include <stdio.h>

typedef struct
{
    int num1, num2;
} t_tile;

void print_tile(t_tile tile, int visible)
{
    printf("%d:%d|", tile.num1, tile.num2);
}

void turn_tile(t_tile *tile)
{
    // Here num1 is swapped for num2 and vice versa.
    int aux;

    aux = tile->num1;
    tile->num1 = tile->num2;
    tile->num2 = aux;
}

void initialize_tile(t_tile *tile, int i, int j)
{
    tile->num2 = j;
    tile->num1 = i;
}
