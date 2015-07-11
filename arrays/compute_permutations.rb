def permute(arr, k)
  i = k
  while i <= k
    swap(arr, i, k)
    permute(arr, k+1)
    swap(arr, i, k)
    i += 1
  end

  if(k == arr.size - 1)
    puts arr.inspect
  end
end

def array_permutations(arr)
  permute(arr, 0)
end