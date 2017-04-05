colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do 
  break if counter == colors.length
  puts "I am the color #{colors[counter]}!"
  counter += 1
end

puts colors.length
puts counter