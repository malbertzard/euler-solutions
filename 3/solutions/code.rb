def largest_prime_factor(number)
  largest_factor = 0

  while number % 2 == 0
    largest_factor = 2
    number /= 2
  end

  factor = 3
  while factor <= Math.sqrt(number)
    if number % factor == 0
      largest_factor = factor
      number /= factor
    else
      factor += 2
    end
  end

  largest_factor = number if number > largest_factor
  largest_factor
end

number = 600851475143
result = largest_prime_factor(number)
puts result
