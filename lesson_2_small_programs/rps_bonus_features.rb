require 'pry'

# the user makes a choice
# the computer makes a choice
# the winner is displayed

# Here are a couple of bonus features for the Rock Paper Scissors program.

# 1. Lizard Spock

# This is a variation on the normal Rock Paper Scissors game by adding two more
# options - Lizard and Spock. The full explanation and rules are here. There's
# also a hilarious Big Bang Theory video about it here.

# The goal of this bonus is to add Lizard and Spock into your code.

# 2. Typing out the full word "rock" or "lizard" is quite tiring. Modify the
# program so that the user just has to type "r" for "rock". Note that if you
# did bonus #1, you'll have two words that starts with "s". How do you
# resolve that?

# 3. Keep score of how many times the player or computer has won. Make it so 
# that whoever reaches 5 points first wins. Note: you might be tempted to just 
# add some incrementing logic to the display_results method. Don't do this.
# Remember to keep your methods simple and that they should only do one thing.

VALID_CHOICES = { r: 'rock', p: 'paper', sc: 'scissors', l: 'lizard',
                  sp: 'spock' }

WINNING_COMBINATIONS = [
  ['rock', 'scissors'],
  ['rock', 'lizard'],
  ['paper', 'rock'],
  ['paper', 'spock'],
  ['scissors', 'paper'],
  ['scissors', 'lizard'],
  ['lizard', 'spock'],
  ['lizard', 'paper'],
  ['spock', 'rock'],
  ['spock', 'scissors']
]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_COMBINATIONS.include?([first, second])
end

def display_results(player, computer)
  if win?(player, computer)
    p "User wins!"
  elsif win?(computer, player)
    p "Computer wins!"
  else
    p "It's a tie"
  end
end

# def display_results(result)
#   if result == 'User wins!'
#     user_score += 1
#   elsif result == 'Computer wins!'
#     computer_score += 1
#   else
#     user_score += 1 && computer_score += 1
#   end
# end

# def count_score(result)
#   if result == 'User wins!'
#       user_score += 1
#   elsif result == 'Computer wins!'
#       computer_score += 1
#     else
#       user_score += 0 && computer_score += 0
#   end
# end

prompt('=====================================================================')
prompt('Welcome to rock, paper, scissors, lizard, spock!')
prompt('This games a battle to 5 points between yourself and the computer AKA')
prompt('******************* Sheldon Cooper ******************************')
prompt('If you want to exit before either you or the computer wins press')
prompt('ctrl + c')
prompt('=====================================================================')


loop do 
  user_score = 0
  computer_score = 0
  loop do
    user_choice = ''
    loop do
      please_choose = <<~MSG
      Please choose:
      r for rock
      p for paper
      sc for scissors
      l for lizard
      sp for spock
      MSG
      prompt(please_choose)
      user_choice = Kernel.gets().chomp().to_sym.downcase

      if VALID_CHOICES.key?(user_choice)
        break
      else
        prompt("'#{user_choice}' isn't a valid choice")
      end
    end
    computer_choice = VALID_CHOICES[VALID_CHOICES.keys.sample]
    prompt("You chose: #{VALID_CHOICES[user_choice]} and the computer
     chose: #{computer_choice}")

    result = display_results(VALID_CHOICES[user_choice], computer_choice)
    # binding.pry
    # count_score(result)
    if result == 'User wins!'
        user_score += 1
    elsif result == 'Computer wins!'
        computer_score += 1
    end

    prompt("User_score is: #{user_score} Computer_score is: #{computer_score}")
    # prompt(computer_score)
    break if computer_score == 5 || user_score == 5
  end

  prompt("Would you like to play again? ('y' to play again)")
  prompt("If you would like to exit, press any other key!")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end


prompt("Thank you for playing rock, paper scissors, lizard, spock!")
prompt("Good bye!")
