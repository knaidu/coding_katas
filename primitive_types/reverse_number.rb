def reverse(num)
  return num if num == 0

  if num < 0
    is_negative = true
    num = -num
  end

  result = 0
  while num != 0
    digit = num % 10
    num = num / 10
    result = result * 10 + digit
  end

  is_negative ? -result : result
end

puts reverse(-123456789)