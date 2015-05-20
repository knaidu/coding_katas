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

  def remove_kth_last_element(k)
    tail = head
    curr = head
    count = 1

    while curr != nil && count < k
      curr = curr.next
      count += 1
    end

    while curr.next != nil
      curr = curr.next
      tail = tail.next
    end

    # Tail is k elements away from the end
    # Delete it

    puts "Removing #{tail.data}"
    temp = tail.next
    tail.data = temp.data
    tail.next = temp.next

  end
end

l = LinkedList.new([1,2,3,4,5,6,7,8,9])
l.print_list
l.remove_kth_last_element(10)
l.print_list