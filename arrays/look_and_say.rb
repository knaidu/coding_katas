def look_and_say(a)
  i = 0
  j = 0
  result = []

  while i < a.length
    j += 1 if j < a.length
    if a[i] != a[j]
      result << j-i << a[i]
      i = j
      count = 1
    end
  end

  result
end

def find_nth(n)
  a = [1]
  n.times do
    result = look_and_say(a)
    a = result
  end

  return a
end

#result = look_and_say([1,2,1,1,1,1])
#puts result.inspect

result = find_nth(7)
puts result.inspect