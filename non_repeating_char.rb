class Occurrence
  attr_accessor :frequency, :position

  def initialize(frequency, position)
    @frequency = frequency
    @position = position
  end
end

class NonRepeatingChar
  attr_reader :result

  def initialize(text)
    @text = text
    @char_count_hash = {}
    compute_char_count_and_position
    @result = find_first_non_repeating_char
  end

  def compute_char_count_and_position
    @text.each_char.with_index do |c, i|
      @char_count_hash[c] ? increment_char_count(c) : @char_count_hash[c] = Occurrence.new(1, i)
    end
  end

  def increment_char_count(c)
    occurrence = @char_count_hash[c]
    occurrence.frequency += 1
    @char_count_hash[c] = occurrence
  end

  def find_first_non_repeating_char
    lowest_position = @text.size
    non_repeating_char = ''
    @char_count_hash.each do |c, occurrence|
      if(occurrence.frequency == 1)
        if (lowest_position > occurrence.position)
          lowest_position = [lowest_position, occurrence.position].min
          non_repeating_char = c
        end
      end
    end

    non_repeating_char
  end
end


NonRepeatingChar.new('tesla').result