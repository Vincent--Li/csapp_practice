#include <stdio.h>

long absdiff_neat(long x, long y) {
  return x > y ? x - y : y - x;
}
