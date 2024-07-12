def add_array
    number_array = []
    for i in 1...101
        number_array << i
    end
    number_array
end

def divisible
    number_array = add_array
    divisible_array = []
    number_array.each do |i|
        if i % 2 == 0 || i % 3 == 0 || i % 5 == 0
            divisible_array << i
        end
    end
    print divisible_array
end

divisible

