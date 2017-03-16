
# In this assignment, we'll build a Rock Paper Scissors game.
# The game flow should go like this:

# the user makes a choice
# the computer makes a choice
# the winner is displayed
# Type along with the following walk-through.

VALID_CHOICES = ['rock', 'paper', 'scissors']

# def test_method()
#   prompt('test message')
# end

# test_method() interesting! 

def prompt(message)
  puts "=> #{message}"
end

# test_method() # works here!

def display_results(player, computer)
  if player == 'paper' && computer == 'rock' ||
    player == 'scissors' && computer == 'paper' ||
    player == 'rock' && computer == 'scissors'
    prompt("User wins!")
  elsif
    player == 'rock' && computer == 'paper' ||
    player == 'paper' && computer == 'scissors' ||
    player == 'scissors' && computer == 'rock'
    prompt("Computer wins!")
  else
    prompt("It's a tie")
  end
end

loop do
  user_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("'#{user_choice}' isn't a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{user_choice} and the computer chose: #{computer_choice}")

  display_results(user_choice, computer_choice)

  prompt("Would you like to play again? ('y' to play again)")
  prompt("If you would like to exit, press any other key!")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing rock, paper scissors!")
prompt("Good bye!")

# Things to consider

# ========================================================================
# Notice how the display_results method calls the prompt method.
# What happens if you move the display_results method definition above
# the prompt method definition? Does it still work?

# Yes it still works
# ========================================================================

# Create another method called test_method at the very top,
# before the prompt method definition.

# Now try invoking the newly created method from just after the prompt method
# definition. Does it work? Now try invoking the method again just before the
# prompt method definition. Does it work? Why is there a different result?

# Your code should look like this:

# def test_method
#   prompt('test message')
# end

# test_method           # second, try invoking "test_method" here

# def prompt(message)
#   Kernel.puts("=> #{message}")
# end

# test_method           # first, try invoking "test_method" here
# How would you use the display_results method differently if it returned a 
# string, as opposed to outputting the string directly?

# Running Rubocop on this code generates a lot of complaints about the
# display_results method being too complex. Can you think of a way to mitigate?
# We'll tackle this in an upcoming assignment, but try to think about a
# possible solution.
