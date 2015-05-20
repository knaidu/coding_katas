def is_valid(input)
  matchers = { '(' => ')', '{' => '}', '[' => ']' }
  openers = matchers.keys
  closers = matchers.values
  stack = []

  input.each_char do |c|
    if openers.include?(c)
      stack.push(c)
    elsif closers.include?(c)
      if stack.pop != matchers[c]
        break
      end
    end
  end

  stack.size == 0
end


def matching_parantheis(input, index)
  matchers = { '(' => ')', '{' => '}', '[' => ']' }
  openers = matchers.keys
  closers = matchers.values
  stack = []

  offset = index+1
  input = input[offset..-1]
  puts input
  input.each_char.with_index do |c, i|
    if openers.include?(c)
      stack.push(c)
    elsif closers.include?(c)
      return offset+i if stack.size == 0
      stack.pop
    end
  end

  puts stack

  puts "Closing paranthesis not found"
end

matching_parantheis('Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing', 10)

is_valid("(a)")
is_valid("()()")
is_valid("()[]")
is_valid("([)]")
is_valid("([)")
is_valid(")(")
is_valid("{ [ ( ] ) }")