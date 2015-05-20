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

  def cyclic_right_shift
    puts 'Shifting right ..'
    if @head.next.nil?
      return
    end

    prev = @head
    curr = @head.next

    while curr.next
      prev = curr
      curr = curr.next
    end

    prev.next = nil
    curr.next = @head
    @head = curr
  end
end

l = LinkedList.new([1,2])
l.print_list
l.cyclic_right_shift
l.print_list