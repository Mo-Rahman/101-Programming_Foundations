# TODO = EXERCISE 5

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9]] +  # rows
                [[1,4,7], [2,5,8], [3,6,9]] +  # column
                [[1,5,9], [3,5,7]]             # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd, player_score, computer_score)
  system 'clear' || 'cls'
  prompt '====================================================================='
  prompt 'Naughts and Crosses or Tic tac toe' 
  prompt 'This games a battle to 5 points between yourself and the computer' 
  prompt 'If you want to exit before either you or the computer wins press' 
  prompt 'ctrl + c' 
  prompt '=====================================================================' 
  puts "You're a #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}"
  puts "Your score is: #{player_score}, Computer score is: #{computer_score}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# ============================================================================
# My simple joiner method - not 100% right as it leaves a comma after the 'or'
# ============================================================================

# def joiner(arr)
#   joined = ''
#   if arr.length > 2
#     joined = arr[0..-2] + ['or'] + [arr[-1]]
#     joined.join(', ')
#   elsif arr.length == 2
#     arr.join(' or ')
#   elsif arr.length == 1
#     arr.join('')
#   end
# end

# ============================================================================
# Launch school joiner method :-) 
# ============================================================================


def joiner(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# ============================================================================

def player_places_piece!(brd)
  square = ''
  loop do 
    prompt "Choose a square #{joiner(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
      prompt "Sorry, that's not a valid choice!"
  end
  brd[square] = PLAYER_MARKER
end

# def computer_places_piece!(brd)
#   square = empty_squares(brd).sample
#   brd[square] = COMPUTER_MARKER
# end

def computer_places_piece!(brd)
  square = nil

  # offence

  WINNING_LINES.each do |line|
    square = find_at_risk_square(brd, line, COMPUTER_MARKER)
    break if square
  end

  # defence

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(brd, line, PLAYER_MARKER)
      break if square
    end
  end
      
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

# I know that at the moment the computer places a piece randomly from what is 
# available from the emptry square's list

# I need a way of getting the computer to mark the 3rd square of a line - when 
# 2 squares of the line have been marked by the player. If there is no threat, 
# randomly place a piece from the available squares. 

# my solution within the find_at_risk_square

# def find_at_risk_square(brd, line)
#   if brd.values_at(*line).count(PLAYER_MARKER) == 2
#     brd.select do |k, v|
#       line.include?(k) && v == INITIAL_MARKER
#     end.keys.first
#   elsif brd.values_at(*line).count(COMPUTER_MARKER) == 2
#     brd.select do |k, v|
#       line.include?(k) && v == INITIAL_MARKER
#     end.keys.first
#   else
#     nil
#   end
# end

def find_at_risk_square(brd, line, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select do |k, v|
      line.include?(k) && v == INITIAL_MARKER
    end.keys.first
  else
    nil
  end
end

# def find_at_risk_square(line, board)
#   if board.values_at(*line).count('X') == 2
#     board.select{|k,v| line.include?(k) && v == ' '}.keys.first
#   else
#     nil
#   end
# end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd) 
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3 #&& 
      # brd[line[1]] == PLAYER_MARKER && 
      # brd[line[2]] == PLAYER_MARKER
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3 #&& 
      # brd[line[1]] == COMPUTER_MARKER && 
      # brd[line[2]] == COMPUTER_MARKER
      return "Computer" 
    end
    # binding.pry 
  end
  nil
end


loop do
  board = initialize_board # displays the initial empty board
  player_score = 0
  computer_score = 0
  loop do 
    loop do 
    display_board(board, player_score, computer_score) 

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board, player_score, computer_score)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won"
    else
      prompt "It's a tie!"
    end
    
    # count score

    if detect_winner(board) == "Player"
      player_score += 1
    elsif detect_winner(board) == "Computer"
      computer_score += 1
    end

    break if player_score == 5 || computer_score == 5
    board = initialize_board
  end

    display_board(board, player_score, computer_score)
  
  # display_board(board)  # This is redundant? As the display board in the loop
  # is essentially showing the final board
  puts "Would you like to play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
