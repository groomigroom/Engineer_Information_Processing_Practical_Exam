#include <stdio.h>
int main()
{
  /*
  int *p;
  *p = 10;
  printf("%d", *p);
  위가 같이 하면 안됨...??
  */
  //이렇게 주소를 저장할 값 출력??
  int a;
  int *p;
  
  p = &a;
  *p = 10;
  
  printf("%d", *p);
  
  int s[4] = {1, 2, 3};
  return 0;
}
