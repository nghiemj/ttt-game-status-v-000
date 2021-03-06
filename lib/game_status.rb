require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[2])
  end
end

def full?(board)
  board.all? do |space| 
    space == "X" || space == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end
  
def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
 if won?(board) 
    board[won?(board)[0]]
  else 
   nil
  end
end
  
  
#  name.include?
  #binding.pry
  
 # return nil
 
  