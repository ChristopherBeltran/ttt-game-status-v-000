# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  #Top Row Combo
  [3,4,5],  #Middle Row Combo
  [6,7,8],  #Bottom Row Combo
  [0,3,6],  #Left Row Combo
  [1,4,7],  #Middle Row Combo
  [2,5,8],  #Right Row Combo
  [0,4,8],  #Left Diag Combo
  [2,4,6]   #Right Diag Combo
  ]
  
def won?(board)
WIN_COMBINATIONS.each do |combos|
  win_index_1 = combos[0]
  win_index_2 = combos[1]
  win_index_3 = combos[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return combos
  else
    false 
  end 
end
end

def full?(board)
  board.all? {|spots| spots == "X" || spots == "O"}
  end
def draw?(board)
  if full?(board) && won?(board) == false
    return true 
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
if won?(board) == false
  return nil
else
numbers = won?(board)

first = numbers[0]
second = numbers[1]
third = numbers[2]

win_1 = board[first]
win_2 = board[second]
win_3 = board[third]

case
when
  won?(board) && win_1 == "X" && win_2 == "X" && win_3 == "X"
  return "X"
when
  won?(board) && win_1 == "O" && win_2 == "O" && win_3 == "O"
  return "O"
end
end
end
end