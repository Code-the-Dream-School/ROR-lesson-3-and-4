def divisible_by_2_3_5
    (1..100).select { |n| n % 2 == 0 || n % 3 == 0 || n % 5 == 0 }
end
  
result = divisible_by_2_3_5
puts result
  