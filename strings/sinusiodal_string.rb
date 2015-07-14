def sinusiodal_string(str)
  result = ''
  i = 1
  while i<str.size
    result << str[i]
    i += 4
  end

  i = 0
  while i<str.size
    result << str[i]
    i += 2
  end

  i = 3
  while i<str.size
    result << str[i]
    i += 4
  end

  result
end

puts sinusiodal_string('Hello_world')