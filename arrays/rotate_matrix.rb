def rotate_matrix(arr)
  row_start = 0
  col_start = 0
  row_end = arr.size
  col_end = arr.size

  while row_start < row_end && col_start < col_end
    # Setup the boundary points
    r1 = row_start
    c1 = col_start
    r2 = row_end-1
    c2 = col_start
    r3 = row_end - 1
    c3 = col_end -1
    r4 = row_end - 1
    c4 = col_start

    (0...arr.size).times do
      # Four way swap
      temp = arr[r1][c1]
      arr[r1][c1] = arr[r2][c2]
      arr[r2][c2] = arr[r3][c3]
      arr[r3][c3] = arr[r4][c4]
      arr[r4][c4] = temp
      c1 += 1
      r2 += 1
      c3 -= 1
      r4 -= 1
    end

    # Shrink the boundaries of the matrix
    row_start +=1
    col_start +=1
    row_end -= 1
    col_end -= 1
  end
end