# Implement an algorithm to determine if a string has all unique characters.
# What if you can not use additional data structures?

def uniq?(word)
  raise ArgumentError "Input word must be provided" unless !word.nil?

  word_hash = {}
  word.each_char do |letter|
    if word_hash[letter] == 1
      return false
    else
      word_hash[letter] = 1
    end
  end

  return true
end

# Test cases

uniq?("word") #=> true
uniq?("www")  #=> false
uniq?("w1w23w") #=> false
