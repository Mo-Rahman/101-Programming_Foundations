alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

# loop do 
#   break if counter == alphabet.size
#   puts alphabet[counter]
#   counter += 1
# end

loop do 
  puts alphabet[counter]
  counter += 1
  break if counter == alphabet.length
end