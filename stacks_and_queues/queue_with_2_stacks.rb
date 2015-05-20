# Queue with two stacks. Implement a queue with two stacks so that each queue
# operations takes a constant amortized number of stack operations.

class Queue
  def initialize
    @stack1 = []
    @stack2 = []
  end

  def push(value)
    @stack1.push(value)
  end
  
  def pop
    if @stack2.empty?
      move_elements
    end
    @stack2.pop
  end

  def is_full?(stack)
    stack.size == max_size
  end

  def move_elements
    while !@stack1.empty?
      @stack2.push(@stack1.pop)
    end
  end
end

q = Queue.new
q.push 10
q.push 20
q.push 30
q.pop
q.push 40
q.pop
