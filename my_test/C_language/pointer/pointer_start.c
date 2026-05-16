#include <stdio.h>
int main()
{
  int a = 5;
  int* ap = &a;
  printf("%d\n", *ap);
  int b = 6;
  int *bp;
  bp = &b;
  printf("%d\n", *bp);
  return 0;
}
