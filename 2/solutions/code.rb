limit = 4000000
prev_term = 1
current_term = 2
sum_even_terms = 0

while current_term <= limit
  sum_even_terms += current_term if current_term.even?

  next_term = prev_term + current_term
  prev_term = current_term
  current_term = next_term
end

puts sum_even_terms
