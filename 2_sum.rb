def find_pair(array, sum)
  i = 0
  pair_exists = {}
  while i < array.size
    if pair_exists.include?(array[i])
      return true
    else
      pair_exists[sum - array[i]] = true
    end
    i += 1
  end

  return false
end


puts find_pair([1,2,3,4,5], 3)