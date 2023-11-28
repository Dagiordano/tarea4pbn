#include "tarea.h"
#include <iostream>

using namespace std;

float bits_ulong(unsigned long n) {

  float bits = 0;
  while(n) {
    bits += n & 1;
    n >>= 1;
    
  }
  return bits;
}