def generate(t, p)
  probability = partial_sum(p)

  rand = get_random_number(0, t.size)

  return t[search(probability, rand)]
end

def search(arr, k)
  low = 0
  high = arr.size - 1
  mid = (low + high) / 2
  while low < high
    if arr[mid] == k
      return mid
    elsif arr[mid] < k
      low = mid + 1
    else
      high = mid - 1
    end

    if arr[mid] > k
      return mid
    else
      return mid + 1
  end
end

def partial_sum(p)
  i = 0
  result = []
  result << 0
  while i < p.size
    result << result.inject(:+) + p[i]
  end
end


[1,2,3,4,5,7,8,9,10]