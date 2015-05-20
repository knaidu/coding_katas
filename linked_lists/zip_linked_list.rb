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

  def print_list(head)
    curr = head

    while curr != nil
      print "#{curr.data}, "
      curr = curr.next
    end

    puts ''
  end

  def reverse(head)
    puts 'Reversing ..'

    return nil if head.nil?
    return head if head.next.nil?

    if head.next.next.nil?
      prev = head
      curr = prev.next
      curr.next = prev
      prev.next = nil
      head = curr
      return head
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

    fwd
  end

  def split
    slow = @head
    fast = @head
    prev = slow

    while slow && fast && fast.next
      prev = slow
      slow = slow.next
      fast = fast.next.next
    end

    prev.next = nil
    slow
  end

  def merge_list(first, second)
    return second if first.nil?
    return first if second.nil?

    head = first
    curr = first
    first = first.next

    while(first && second)
      curr.next = second
      second = second.next
      curr = curr.next
      curr.next = first
      first = first.next
      curr = curr.next
    end

    if first
      curr.next = first
    elsif second
      curr.next = second
    end

    head
  end

  def zip
    return if @head.next.nil?
    return if @head.next.next.nil?

    first = @head
    second = split
    second = reverse(second)

    puts "First"
    print_list(first)

    puts "Second"
    print_list(second)

    @head = merge_list(first, second)
  end
end

l = LinkedList.new([1,2,3,4,5,6,7,8,9])
l.print_list(l.head)
l.zip
l.print_list(l.head)