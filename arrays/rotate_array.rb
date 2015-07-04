def rotate_array(arr, i)
  i = i%arr.size
  return arr if i == 0

  left = arr[0...i].reverse
  right = arr[i..arr.size].reverse
  arr = left + right

  arr.reverse
end

puts rotate_array([1,2,3,4,5,6,7], 7).inspect