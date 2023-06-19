upper_limit = 1000
sum = 0

for i in range(1, upper_limit):
    if i % 3 == 0 or i % 5 == 0:
        sum += i
print(sum)
