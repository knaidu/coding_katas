class BinaryTreeNode
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end
end

class BinaryTree
  attr_accessor :root

  def nodes_exist? (current_stack, next_stack)
    !current_stack.empty? || !next_stack.empty?
  end

  def print_node(node)
    print "#{node.data}, "
  end

  def insert_left_to_right(stack, node)
    stack.push(node.left) if !node.left.nil?
    stack.push(node.right) if !node.right.nil?
  end

  def insert_right_to_left(stack, node)
    stack.push(node.right) if !node.right.nil?
    stack.push(node.left) if !node.left.nil?
  end

  def insert_child_nodes(is_left_to_right, stack, node)
    is_left_to_right ? insert_left_to_right(stack, node) : insert_right_to_left(stack, node)
  end

  def flip_flag(flag)
    flag = flag ? false : true
  end


  def print_zig_zag
    current_stack = [@root]
    next_stack = []
    is_left_to_right = true

    while nodes_exist?(current_stack, next_stack)
      # Pop node and process
      node = current_stack.pop
      print_node(node)
      insert_child_nodes(is_left_to_right, next_stack, node)

      # Prepare to process next level
      if current_stack.empty?
        current_stack = next_stack
        next_stack = []
        flip_flag(is_left_to_right)
        puts " "
      end
    end
  end

  def initialize
    @root = BinaryTreeNode.new(1)
    two = BinaryTreeNode.new(2)
    three = BinaryTreeNode.new(3)

    root.left = two
    root.right = three

    four = BinaryTreeNode.new(4)
    five = BinaryTreeNode.new(5)
    two.left = four
    two.right = five

    six = BinaryTreeNode.new(6)
    seven = BinaryTreeNode.new(7)
    three.left = six
    three.right = seven

    eight = BinaryTreeNode.new(8)
    nine = BinaryTreeNode.new(9)

    four.left = eight
    four.right = nine

    ten = BinaryTreeNode.new(10)
    eleven = BinaryTreeNode.new(11)

    five.left = ten
    five.right = eleven

    twelve = BinaryTreeNode.new(12)
    thirteen = BinaryTreeNode.new(13)

    six.left = twelve
    six.right = thirteen

    fourteen = BinaryTreeNode.new(14)
    fifteen = BinaryTreeNode.new(15)

    seven.left = fourteen
    seven.right = fifteen

    root
  end

end

binary_tree = BinaryTree.new
binary_tree.print_zig_zag