
# In this assignment, we'll build a Rock Paper Scissors game.
# The game flow should go like this:

# the user makes a choice
# the computer makes a choice
# the winner is displayed
# Type along with the following walk-through.

VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  first == 'paper' && second == 'rock' ||
    first == 'scissors' && second == 'paper' ||
    first == 'rock' && second == 'scissors'
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("User wins!")
  elsif win?(computer, player)
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
