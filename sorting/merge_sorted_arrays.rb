def sorted_merge(a1, a2)
  return a2 if a1.nil?
  return a1 if a2.nil?

  # find last element in a1
  i = a1.size
  while a1[i].nil?
    i -= 1
  end

  # last element in a2
  j = a2.size - 1

  # last element of sorted array
  k = a1.size - 1

  while i>=0 && j>=0
    puts "a1[i]: #{a1[i]}, a2[j]: #{a2[j]}"
    if a1[i] > a2[j]
      a1[k] = a1[i]
      i -= 1
    else
      a1[k] = a2[j]
      j -= 1
    end
    k -= 1
  end

  # Elements left in a1
  while i > 0
    a1[k] = a 1[i]
    i -= 1
    k -= 1
  end

  # Elements left in a2
  while j > 0
    a1[k] = a2[j]
    j -= 1
    k -= 1
  end

  a1
end

a1 = [1,3, nil, nil, nil, nil]
a2 = [2,4,6,8]

puts sorted_merge(a1, a2).inspect
