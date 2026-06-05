#include <stdio.h>
void groomgroom(void) {
  printf("김구름 멍멍");
}

void charpri() {
  char a[8];
  char *ptr;
  a[0] = 'k';
  a[1] = 'i';
  a[2] = 'm';
  a[3] = 'g';
  a[4] = 'r';
  a[5] = 'o';
  a[6] = 'o';
  a[7] = 'm';
  
  ptr = a;
  printf("%s", ptr);
}

void main()
{
  void (*funcptr)(void) = &groomgroom;
  (*funcptr)();
  int x = 100;
  int *px = &x;
  int **ppx = &px;
  **ppx = 25;
  printf("%d", *px);
  charpri();
}
//김구름멍멍25kimgroom
