def encoding(num)
  return '' if num == 0

  result = ''
  while num != 0
    digit = num % 26
    value = 'A'.ord + digit
    puts "num: #{num}"
    puts "digit: #{digit}"
    puts "value: #{value}"

    result = "#{result}#{value.chr}"
    num = num / 26
  end

  result.reverse
end

puts encoding(26)