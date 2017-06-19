require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}"
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

# prompt "Please mark a square from 1 to 9"
# user_input = gets.chomp.to_i
# loop do 
#   if (1..9).include?(user_input)
#     break
#   else
#     puts "Please mark a square from 1 to 9"
#     user_input = gets.chomp.to_i
#   end
# end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do 
    prompt "Choose a square (#{empty_squares(brd)})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
      prompt "Sorry, that's not a valid choice!"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9]] +  # rows
                  [[1,4,7], [2,5,8], [3,6,9]] +  # column
                  [[1,5,9], [3,5,7]]             # diagonals

  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER && 
      brd[line[1]] == PLAYER_MARKER && 
      brd[line[2]] == PLAYER_MARKER
      return "Player"
    elsif brd[line[0]] == COMPUTER_MARKER && 
      brd[line[1]] == COMPUTER_MARKER && 
      brd[line[2]] == COMPUTER_MARKER
      return "Computer" 
    end
    # binding.pry 
  end
  nil
end


loop do
  board = initialize_board

  loop do 
    display_board(board) # displays the initial empty board

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end
    
  display_board(board)  # displays the board after user & computer choice's

  if someone_won?(board)
    prompt "#{detect_winner(board)} won"
  else
    prompt "It's a tie!"
  end

  # display_board(board)  # This is redundant? As the display board in the loop
  # is essentially showing the final board
  puts "Would you like to play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
