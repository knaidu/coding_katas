def find_duplicate(a)
  low = 0
  high = a.size - 1
  mid = (low + high ) / 2

  while (low < high)
    expected_lower_count = mid - low
    actual_lower_count = 0
    a.each do |e|
      if e < mid
        actual_lower_count + = 1
      end

      if expected_lower_count > actual_lower_count
        high = mid
      else
        low = mid
      end
    end
  end

  return mid
end