class StackWithMax
  def initialize
    @stack = []
    @max_stack = []
  end

  def push(value)
    @stack.push value
    if @max_stack.empty?
      @max_stack.push(value)
    elsif @max_stack.last < value
      @max_stack.push(value)
    end

    puts @stack
    puts @max_stack
  end

  def pop
    value = @stack.pop
    if @max_stack.size != 0 && @max_stack.last == value
       @max_stack.pop
    end

    puts @stack
    puts @max_stack

    value
  end

  def max
    @max_stack.last
  end
end

s = StackWithMax.new
s.push(10)
