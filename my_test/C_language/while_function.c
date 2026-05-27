#include <stdio.h>
int one(int x, int y) {
  while (x < y) {
    x++;
  }
  x += y;
  return x;
}

int main()
{
  int z = one(3, 11);
  printf("%d", z);
}
//22
