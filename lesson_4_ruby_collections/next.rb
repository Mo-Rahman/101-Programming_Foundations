# Next

# Besides break, Ruby also provides the next keyword to help us control loops. 
# When next is executed, it tells the loop to skip the rest of the current iteration 
# and begin the next one. We can choose to skip the current iteration when counter 
# represents an odd number by adding an if modifier to next with the condition counter.odd?.

counter = 0

loop do 
  counter += 1
  next if counter.odd?
  puts counter
  break if counter == 6
end