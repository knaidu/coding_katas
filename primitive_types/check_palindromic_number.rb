def check_palindromic_number(num)
  return false if num.nil?

  # Single digit is a palindrome
  return true if num/10 == 0

  stack = []
  num_copy = num
  while num_copy != 0
    stack.push(num_copy % 10)
    num_copy = num_copy / 10
  end

  while !stack.empty?
    if stack.pop == num % 10
      num = num / 10
    else
      return false
    end
  end

  return true
end

puts check_palindromic_number(919)