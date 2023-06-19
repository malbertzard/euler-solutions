import math

def largest_prime_factor(number):
    largest_factor = 0

    # Divide by 2 to remove all even factors
    while number % 2 == 0:
        largest_factor = 2
        number /= 2

    # Divide by odd factors starting from 3
    factor = 3
    while factor <= math.isqrt(number):
        if number % factor == 0:
            largest_factor = factor
            number /= factor
        else:
            factor += 2

    # If the number is prime, it is the largest prime factor
    if number > largest_factor:
        largest_factor = number

    return largest_factor

number = 600851475143
result = largest_prime_factor(number)
print(result)
