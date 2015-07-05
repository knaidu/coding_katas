def parity(num)
  return 0 if num == 0
  return 1 if num == 1

  if num < 0
    num = -num
    count = 1
  else
    count = 0
  end


  while(num > 0)
    count += 1
    num = num & (num - 1)
  end

  count
end

puts parity(7)