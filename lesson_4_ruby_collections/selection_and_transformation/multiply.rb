my_numbers = [1, 4, 3, 7, 2, 6]
# multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

def multiply(number, multiplier)
  counter = 0
  multiplied_num = []

  loop do 
    break if counter == number.size

    multiplied_num << number[counter] * multiplier
    counter += 1
  end
  
  multiplied_num
end

puts multiply(my_numbers, 5)