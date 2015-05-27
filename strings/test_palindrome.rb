def is_palindrome(s)
  return true if s.length == 1

  if s.length == 2
    return s[0] == s[1]
  end

  i = 0
  j = s.length - 1

  while i < j
    if s[i] != s[j]
      return false
    else
      i += 1
      j -= 1
    end
  end

  return true
end

puts is_palindrome('Hello')
puts is_palindrome('madam')
puts is_palindrome('i')