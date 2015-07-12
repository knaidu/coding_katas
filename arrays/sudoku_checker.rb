def is_valid_sudoku(board)
  row_count = board[0].size
  col_count = board.size
  region_size = Math.sqrt(row_count)

  ## Check rows
  (0...row_count).each do |i|
    return false if has_duplicate(board, i, i+1, 0, col_count)
  end

  ## Check columns
  (0...col_count).each do |j|
    return false if has_duplicate(board, 0, row_count, j, j+1)
  end

  ## Check regions
  i = 0
  while i < row_count
    j = 0
    while  j < col_count
      return false if has_duplicate(board, i, i + region_size, j, j + region_size)
      j += region_size
    end
    i += region_size
  end
end


def has_duplicate(board, row_start, row_end, col_start, col_end)
  sudoku_hash = {}
  (row_start...row_end).each do |i|
    (col_start...col_end).each do |j|
      element = board[i][j]
      if element == 0 || sudoku_hash[element] == 1
        return true
      else
        sudoku_hash[element] = 1
      end
    end
  end
end