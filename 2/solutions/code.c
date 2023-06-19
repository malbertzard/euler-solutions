#include <stdio.h>

int main() {
    int limit = 4000000;
    int prev_term = 1;
    int current_term = 2;
    int sum_even_terms = 0;

    while (current_term <= limit) {
        if (current_term % 2 == 0) {
            sum_even_terms += current_term;
        }

        int next_term = prev_term + current_term;
        prev_term = current_term;
        current_term = next_term;
    }

    printf("%d\n", sum_even_terms);

    return 0;
}
