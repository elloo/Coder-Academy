def total(num1, num2)
    sum = num1 + num2
    subtraction = num1 - num2
    yield(sum, subtraction)
end

total(4,4) do |addition_total, subtraction_total|
    puts "Addition total is #{addition_total}" # -> 8
    puts "Subtraction total is #{subtraction_total}" # -> 0
  end
