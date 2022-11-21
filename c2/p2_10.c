#include <stdio.h>


void inplace_swap(int *x, int *y) {
  printf("before: x is %d, y is %d\n", *x, *y);
  *y = *x ^ *y;
  printf("before: x is %d, y is %d\n", *x, *y);
  *x = *x ^ *y;
  printf("after: x is %d, y is %d\n", *x, *y);
  *y = *x ^ *y;
  printf("after: x is %d, y is %d\n", *x, *y);
}


int main(){
  int a = 200;
  int b = 2000;
  inplace_swap(&a, &b); 
  return 0;
}
