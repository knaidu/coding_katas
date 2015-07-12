def spiral_order(arr)
  row_start = 0
  col_start = 0
  row_end = arr.size
  col_end = arr.size

  result = []
  while col_start <= col_end
    row = row_start
    col = col_start
    while col < col_end
      result << a[row][col]
      col += 1
    end

    col = col_end - 1
    row = row_start + 1

    while row < row_end
      result << a[row][col]
      row += 1
    end

    row = row_end - 1
    col = col_end - 2
    while col >= col_start
      result << arr[row][col]
      col -= 1
    end

    col = col_start
    row = row_end - 2
    while row > row_start + 1
      result << arr[row][col]
      row -= 1
    end

    row_start += 1
    col_start += 1
    row_end -= 1
    col_end -= 1
  end

end