# creating a method called doubled numbers using a loop 

array_of_numbers = [1,2,3,4,5,6,7,8,9,10]

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do 
    break if counter == numbers.count
    
    current_number = numbers[counter]
    doubled_numbers << current_number * 2
    
    counter += 1  
  end

  doubled_numbers
end

doubled =  double_numbers(array_of_numbers)
p doubled

puts array_of_numbers