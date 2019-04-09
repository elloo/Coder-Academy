numbers = [1,2,3,4,5]

def my_map(numbers)
    # Storing static array length
    length = numbers.length

    # Iterating once through array to add additions of +5
    i = 0
    while i < length
        numbers.push(yield (numbers[i]))
        i += 1
    end

    # Iterating through array to remove initial array elements
    i = 0
    while i < length
        numbers.shift()
        i += 1
    end
    return numbers
end

result = my_map(numbers) {|num| num + 5}
puts "map result is #{result}"
# [6,7,8,9,10]