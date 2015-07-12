def pascals_triangle(num_rows)
  result = []
  result << [1]

  (1...num_rows).each do |i|
    curr_row = []
    (1...i).each do |j|
      sum = result[i-1][j-1] + result[i-1][j]
      curr_row << sum
    end
    result << curr_row
  end
end