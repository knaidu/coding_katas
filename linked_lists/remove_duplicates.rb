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

  def remove_duplicates
    puts 'Removing duplicates'

    return if @head.next.nil?

    prev = @head
    curr = prev.next

    while curr != nil
      if prev.data == curr.data
        prev.next = curr.next
      else
        prev = curr
      end

      curr = curr.next
    end
  end
end

#l = LinkedList.new([1,1,1,1,1,2,2,2,2,2,3,4,5])
l = LinkedList.new([1])

l.print_list
l.remove_duplicates
l.print_list
