class LinkedListNode
  attr_accessor :data, :next

  def initialize(data)
    @data = data
  end
end

class LinkedList
  attr_accessor :head

  def initialize(array)
    @head = LinkedListNode.new(array.shift)
    curr = head

    while !array.empty?
      curr.next = LinkedListNode.new(array.shift)
      curr = curr.next
    end
  end

  def print_list
    curr = @head

    while curr != nil
      print "#{curr.data}, "
      curr = curr.next
    end

    puts ''
  end

  def is_palindrome
    return true if @head.next == nil

    if @head.next.next == nil
      return @head.data == @head.next.data
    end

    slow_ptr = @head
    fast_ptr = @head

    while fast_ptr != nil && fast_ptr.next != nil
      slow_ptr = slow_ptr.next
      fast_ptr = fast_ptr.next.next
    end

    slow_ptr = slow_ptr.next

    data_stack = []

    while slow_ptr != nil
      data_stack.push(slow_ptr.data)
      slow_ptr = slow_ptr.next
    end

    slow_ptr = @head

    while !data_stack.empty?
      value = data_stack.pop
      if value != slow_ptr.data

        return false
      end
      slow_ptr = slow_ptr.next
    end

    return true
  end
end

l = LinkedList.new([1,2])
l.print_list
puts l.is_palindrome