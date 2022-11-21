#include <stdio.h>
#include <inttypes.h>

int main() {
  int x = 32;
  long y = 64;
  printf("x = %" PRId32 ", y = %" PRIu64 "\n", x, y);
}
