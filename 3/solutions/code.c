#include <stdio.h>
#include <math.h>

unsigned long long largest_prime_factor(unsigned long long number) {
    unsigned long long largest_factor = 0;

    while (number % 2 == 0) {
        largest_factor = 2;
        number /= 2;
    }

    unsigned long long factor = 3;
    while (factor <= sqrt(number)) {
        if (number % factor == 0) {
            largest_factor = factor;
            number /= factor;
        } else {
            factor += 2;
        }
    }

    if (number > largest_factor) {
        largest_factor = number;
    }

    return largest_factor;
}

int main() {
    unsigned long long number = 600851475143;
    unsigned long long result = largest_prime_factor(number);
    printf("%llu\n", result);

    return 0;
}
