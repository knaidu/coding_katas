class WordCloud
  attr_reader :text, :word_count_hash

  def self.create(text)
    @text = text
    @word_count_hash = {}
    self.process
  end

  def self.is_letter(c)
    'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.include?(c)
  end

  def self.is_delimiter(c)
    '.,-: '.include?(c)
  end

  def self.add_to_hash(word)
    if @word_count_hash[word]
      count = @word_count_hash[word]
      @word_count_hash[word] = count + 1
    else
      @word_count_hash[word] = 1
    end
  end

  def self.process
    current_word = ''

    for i in 0..@text.size-1
      c = @text[i]
      if self.is_letter(c)
        current_word += c

      elsif self.is_delimiter(c)
        self.add_to_hash(current_word.downcase) unless current_word == ''
        current_word = ''
      end
    end

    self.add_to_hash(current_word) unless current_word == ''

    puts "Hash: #{@word_count_hash}"
  end
end


WordCloud.create("After beating the eggs, Dana read the next step:")
WordCloud.create("Hello Hello World")
WordCloud.create("Hello Hello.. World World    .... hello--world")
