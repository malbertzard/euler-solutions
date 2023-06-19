#include <stdio.h>

int main() {
    int upper_limit = 1000;
    int sum = 0;

    for (int i = 1; i < upper_limit; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    printf("%d\n", sum);
    return 0;
}
