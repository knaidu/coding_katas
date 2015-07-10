def increment(arr)
  return nil if arr.nil?

  i = arr.size - 1
  arr[i] += 1

  while i > 0 && arr[i] == 10
    arr[i] = 0
    i -= 1
    arr[i] += 1
  end

  if arr[0] == 10
    arr[0] = 0
    arr = [1].concat(arr)
  end

  arr
end


puts increment([9,9]).inspect
puts increment([9,9,9]).inspect
puts increment([1,2,3]).inspect