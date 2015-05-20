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

  def even_odd_merge
    odd_ptr = @head
    even_ptr = @head.next

    first_odd_ptr = @head
    result_ptr = @head.next

    while even_ptr != nil || odd_ptr != nil
      odd_ptr.next = odd_ptr.next.next
      odd_ptr = odd_ptr.next
      if even_ptr.next
        even_ptr.next = even_ptr.next.next
        even_ptr = even_ptr.next
      else
        break
      end
    end

    even_ptr.next = first_odd_ptr
    return @head = result_ptr
  end
end

l = LinkedList.new([1,2,3,4,5,6,7,8])
l.print_list(l.head)
l.even_odd_merge
l.print_list(l.head)
