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

def is_loop(head)
  return false if head == nil
  return false if head.ptr == nil

  slow_ptr = head
  fast_ptr = head
  fast_ptr = fast_ptr.ptr
  fast_ptr = fast_ptr.ptr

  while fast_ptr != nil && slow_ptr != nil do
    if slow_ptr == fast_ptr
      return true
    end

    slow_ptr = slow_ptr.ptr
    fast_ptr = fast_ptr.ptr
    fast_ptr = fast_ptr.ptr if fast_ptr != nil
  end

  return false
end

def construct_linked_list(array)
  head = Node.new(array.pop)
  curr_ptr = head
  array.each do |e|
    node = Node.new(e)
    curr_ptr.ptr = node
    curr_ptr = node
  end

  head
end

def make_loop(head)
  curr_ptr = head.ptr
  curr_ptr = curr_ptr.ptr
  curr_ptr = curr_ptr.ptr
  curr_ptr.ptr = head
end

def main
  head = construct_linked_list([1,2,3,4,5,6,7])
  #make_loop(head)
  is_loop(head)
end