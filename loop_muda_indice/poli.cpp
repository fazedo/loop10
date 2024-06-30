#include <cmath>
#include <iostream>
#include <ranges>
using std::ranges::views::iota;

int main() {

  // Primeiro loop
  int n = 10;
  for (int i = 0; i < n; i++) {
    n = n - 1;
  }
  std::cout << n << std::endl;

  // Segundo loop
  n = 10;
  for (int i : iota(0, n)) {
    n = n - 1;
  }
  std::cout << n << std::endl;
  return 0;
}