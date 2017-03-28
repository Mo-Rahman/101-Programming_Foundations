
# Question 9

# Method calls can take expressions as arguments. Suppose we define a function 
# called rps as follows, which follows the classic rules of rock-paper-scissors 
# game, but with a slight twist that it declares whatever hand was used in the 
# tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps('rock', 'rock')
# puts result

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# so first we evalute the inner most parentheses which is rock and paper = paper wins
# second we evaluate rock vs scissors = rock wins. 
# third we evaluate paper vs rock from first and second evaluation = paper wins
# forth we evaluate the final paper vs rock. Paper wins! 
# Finish 