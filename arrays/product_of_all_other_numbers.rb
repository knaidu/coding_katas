def product(array)
  return array if array.size == 1

  result = [1] * (array.size)

  i = 0
  product = 1

  while i < array.size
    result[i] = product
    product = product * array[i]
    i += 1
  end

  product = 1
  i = array.size - 1

  while i >= 0
    result[i] = result[i] * product
    product = product * array[i]
    i -= 1
  end


  result
end

puts product([1,7,3,4]).inspect