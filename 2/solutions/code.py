limit = 4000000
prev_term = 1
current_term = 2
sum_even_terms = 0

while current_term <= limit:
    if current_term % 2 == 0:
        sum_even_terms += current_term

    next_term = prev_term + current_term
    prev_term = current_term
    current_term = next_term

print(sum_even_terms)
