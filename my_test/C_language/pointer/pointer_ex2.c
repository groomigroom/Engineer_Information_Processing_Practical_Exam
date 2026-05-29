#include <stdio.h>
int main()
{
  int exp_a;
  int * exp_a_p;
  exp_a = 12;
  
  exp_a_p = &exp_a;
  
  printf("%d", *&exp_a);
  printf("%d\n", *exp_a_p);
  *exp_a_p += 12;
  printf("%d\n", exp_a);
  printf("%d\n", *exp_a_p);
}

/*

출력값
1212
24
24
*/
