require_relative "../lib/valid_move.rb"

Zttt_board = ["","X"," "," "," "," "," "," "," "]
puts "Enter a position on the board 1-9:"
user_input = gets.chomp
number_entered = user_input.to_i - 1

def valid_move?(number_entered)
  number_entered.between?(0, 8) && !(position_taken?(Zttt_board, number_entered))
end

def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

puts valid_move?(number_entered)
end
