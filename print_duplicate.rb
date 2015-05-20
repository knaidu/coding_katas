# Print duplicate characters from a string
require 'set'

class PrintDuplicate
  def initialize(text)
    @text = text
    @char_set = Set.new()
    report_duplicate
  end

  def report_duplicate
    result = ''
    @text.each_char do |c|
      if @char_set.include?(c.downcase)
        result += c
      else
        @char_set.add(c.downcase)
      end
    end
    puts "Duplicate chars: #{result}"
    puts "Contents of set: #{@char_set.inspect}"
  end
end

PrintDuplicate.new("test")
