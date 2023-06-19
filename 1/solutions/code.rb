upper_limit = 1000

sum = 0
(1...upper_limit).each do |i|
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
end
puts sum
