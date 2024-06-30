// C++23
#include <ranges>
#include <print>
using std::ranges::views::iota;

int main() {
    int n = 3;
    for (auto n : iota(0, 10)) {
        std::println("{}", n);
    }
    std::println("{}", n);
}
