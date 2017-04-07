# add an 's' to the fruits array

fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do 
  current_element = fruits[counter]

  transformed_elements << current_element + 's'
  
  counter += 1
  break if counter == fruits.length
end

puts "I am the fruits array #{fruits}"
puts "I am the transformed_elements array #{transformed_elements}"
