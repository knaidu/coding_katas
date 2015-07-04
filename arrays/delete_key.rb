def delete_key(arr, key)
  read = 0
  write = 0

  while(read < arr.size)
    if(arr[read] != key)
      arr[write] = arr[read]
      write += 1
    end
    read += 1
  end

  arr[0..write-1]
end

puts delete_key([1,2,2,2,2,2,3,4,5,5,5,5], 5).inspect