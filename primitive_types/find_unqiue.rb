def find_unique(array)
  return array[0] if array.size == 1

  i = 0
  unique_number = array[i]

  while i < array.size - 1
    i += 1
    unique_number = unique_number ^ array[i]
  end

  return unique_number
end

puts find_unique([1])