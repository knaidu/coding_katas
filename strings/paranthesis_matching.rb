def matching_paranthesis(str, num)
  return -1 if str.nil?
  return -1 if str[num] != '('

  i = num + 1
  num_open = 1
  while i < str.size
    puts "#{str[i]}"
    if str[i] == '(' # opening brace
      num_open += 1
    elsif str[i] == ')' # closing brace
      num_open -= 1
      return i if num_open == 0
    end
    i += 1
  end

  return -1
end

#puts matching_paranthesis("hello (how are you) doing", 6)
puts matching_paranthesis("Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing.", 10)