class Node
  attr_accessor :data, :next, :jump

  def initialize(data)
    @data = data
  end
end

def copy_postings(head)
  duplicate_list(head)
  update_jump_ptr(head)
  update_next_ptr(head)
end

def duplicate_list(head)
  curr = head

  while curr != nil
    curr_result = Node.new(curr.data)
    curr_result.next = curr.next
    curr.next = curr_result
    curr = curr_result.next
  end
end

def update_jump_ptr(head)
  curr = head

  while curr != nil
    curr.next.jump = curr.jump.next if curr.jump != nil
    curr = curr.next.next if curr.next != nil
  end
end

def update_next_ptr(head)
  prev = head
  new_head = prev.next
  curr = prev.next

  while curr != nil
    prev.next = curr.next
    curr.next = curr.next.next if curr.next != nil
    prev = prev.next
    curr = curr.next
  end

  new_head
end

def print_elements(head)
  curr_ptr = head
  while(curr_ptr != nil)
    print "#{curr_ptr.data} (#{curr_ptr.jump.data}), "
    curr_ptr = curr_ptr.next
  end
  puts ''
end

def construct_linked_list
  one = Node.new(1)
  two = Node.new(2)
  three = Node.new(3)
  four = Node.new(4)
  five = Node.new(5)

  one.next = two
  two.next = three
  three.next = four
  four.next = five

  one.jump = three
  two.jump = four
  three.jump = one
  four.jump = two
  five.jump = one

  one
end

head = construct_linked_list

print_elements(head)

puts "Copying"

print_elements(copy_postings(head))

