def get_permutations(str)

  return [str] if str.size == 1

  last_char = str[str.size-1...str.size]
  str = str[0...str.size-1]

  permutations_except_last = get_permutations(str)

  permutations = []

  permutations_except_last.each do |str|
    i = 0
    while i <= str.size do
      result = str[0...i] + last_char + str[i...str.size]
      permutations << result
      i += 1
    end
  end

  permutations
end

puts get_permutations('cat').inspect