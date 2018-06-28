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