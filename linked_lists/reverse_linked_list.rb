class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
  end
end

class LinkedList

  attr_accessor :head

  def initialize(array)
    head = Node.new(array.shift)
    prev = head

    while !array.empty?
      curr = Node.new(array.shift)
      prev.next = curr
      prev = curr
    end

    @head = head
  end

  def print_list
    curr = @head

    while curr != nil
      print "#{curr.data}, "
      curr = curr.next
    end

    puts ''
  end

  def reverse
    puts 'Reversing ..'

    return nil if @head.nil?
    return @head if @head.next.nil?

    if @head.next.next.nil?
      prev = @head
      curr = prev.next
      curr.next = prev
      prev.next = nil
      @head = curr
      return
    end

    prev = head
    curr = prev.next
    fwd = prev.next.next
    prev.next = nil

    while fwd.next != nil
      curr.next = prev
      prev = curr
      curr = fwd
      fwd = fwd.next
    end

    fwd.next = curr
    curr.next = prev

    @head = fwd
  end
end

l = LinkedList.new([1,2,3,4,5,6,7,8,9])
l.print_list
l.reverse
l.print_list