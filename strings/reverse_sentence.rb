def reverse_word(word)
  left_ptr = 0
  right_ptr = word.size - 1
  while (left_ptr < right_ptr)
    temp = word[left_ptr]
    word[left_ptr] = word[right_ptr]
    word[right_ptr] = temp
    left_ptr += 1
    right_ptr -= 1
  end

  word
end

def reverse_sentence1(sentence)
  result_sentence = ''
  sentence = reverse_word(sentence)
  words_in_sentence = sentence.split(' ')
  words_in_sentence.each do |word|
    result_sentence << reverse_word(word) + ' '
  end

  result_sentence
end

reverse_sentence('Hello how are you')