def find_rotation_point(array)
  left = 0
  right = array.size

  first = array[0]

  while left < right
    mid = (left + right) / 2

    array[mid] > first ? left = mid : right = mid

    return right if left + 1 == right

  end
end

puts find_rotation_point([15,6,7,8,9,10,11])