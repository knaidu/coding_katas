def offline_sampling(array, k)
  if k <= 1
    return array[rand(array.size)]
  end

  end_ptr = array.size - 1
  k.times do
    r = rand(end_ptr)
    swap(array, r, end_ptr)
    end_ptr -= 1
  end

  return array.slice(end_ptr+1, array.size-1)
end

def swap(array, i, j)
  temp = array[i]
  array[i] = array[j]
  array[j] = temp
end



offline_sampling([1,2,3,4,5,6,7,8,9], 1)