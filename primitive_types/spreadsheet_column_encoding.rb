def encoding(num)
  return '' if num == 0

  result = ''
  while num > 0
    digit = num % 26

    if digit == 0
      result = "#{result}Z"
      num = num / 26 - 1
    else
      value = 'A'.ord + digit - 1
      puts "value: #{value}"
      result = "#{result}#{value.chr}"
      num = num / 26
    end


  end

  result.reverse
end

puts encoding(53)