array_of_numbers = [1,2,3,4,5,6,7,8,9,10]

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if numbers.index(numbers[counter]).odd? # over complexed
    # current_number *= 2 if counter.odd? # launch school solution. 
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

doubled = double_odd_numbers(array_of_numbers)
puts doubled

# counter = 0
# alphabet = ['a', 'b', 'c', 'd']
# current_alphabet = alphabet[counter]
# alphabet.index(alphabet[counter]).odd?