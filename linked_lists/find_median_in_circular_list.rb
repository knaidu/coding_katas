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

  def make_circular
    curr = @head

    while curr.next
      curr = curr.next
    end

    curr.next = @head
  end

  def find_median
    return @head if @head.next == @head
    return @head if @head.next.next == @head

    fast = @head.next
    slow = @head

    while fast != @head && fast.next != @head
      fast = fast.next.next
      slow = slow.next
    end

    return slow
  end
end

l = LinkedList.new([1,2,3,4,5])
l.print_list
l.make_circular
puts "#{l.find_median.data}"