# Merge two sorted linked lists

class Node
  attr_accessor :data, :ptr

  def initialize(data)
    @data = data
    @ptr = nil
  end
end

def print_elements(head)
  curr_ptr = head
  while(curr_ptr != nil)
    puts "#{curr_ptr.data}"
    curr_ptr = curr_ptr.ptr
  end
end

def construct_linked_list(array)
  head = Node.new(array.pop)
  curr_ptr = head
  while !array.empty? do
    node = Node.new(array.pop)
    curr_ptr.ptr = node
    curr_ptr = node
  end

  head
end

def merge(head1, head2)
  curr1 = head1
  curr2 = head2

	if head1.data < head2.data
    head = head1
    curr1 = head1.ptr
  else
    head = head2
    curr2 = head2.ptr
  end

  curr = head

	while curr1 != nil && curr2 != nil
		if(curr1.data < curr2.data)
			curr.ptr = curr1
      curr = curr.ptr
      curr1 = curr1.ptr
		else
			curr.ptr = curr2
      curr = curr.ptr
      curr2 = curr2.ptr
		end
  end

  if curr1 != nil
    append(curr, curr1)
  end

  if curr2 != nil
    append(curr, curr2)
  end

  head
end

def append(curr, curr1)
  while curr1 != nil
    curr.ptr = curr1
    curr = curr.ptr
    curr1 = curr1.ptr
  end
end

head1 = construct_linked_list([7,5,3,1])
head2 = construct_linked_list([8,6,4,2])

merged_head = merge(head1, head2)
print_elements(merged_head)