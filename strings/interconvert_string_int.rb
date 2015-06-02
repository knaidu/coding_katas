def string_to_int(str)
  i = 0

  if str[0] == '-'
    is_negative = true
    i += 1
  end

  digit = 0
  num = 0

  while i < str.length
    if str[i].ord < '0'.ord || str[i].ord > '9'.ord
      puts 'Invalid input'
      return ''
    end

    digit = str[i].ord - '0'.ord
    num = num * 10 + digit
    i += 1
  end

  is_negative ? -num : num
end

def int_to_string(num)
  return '0' if num == 0

  if num < 0
    is_negative = true
    num = -num
  end

  str = ''

  while num != 0
    digit = num % 10
    num = num / 10
    str = "#{digit}#{str}"
  end

  is_negative ? "-#{str}" : str
end

puts string_to_int('9')
#puts int_to_string(-9876)