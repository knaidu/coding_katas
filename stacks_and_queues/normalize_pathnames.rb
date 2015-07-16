def normalize(pathname)
  return nil if pathname.nil?

  stack = []
  i = 0
  starts_at_root = false

  # If it starts with '/' insert that into stack
  if pathname[0] == '/'
    stack.push('/')
    starts_at_root = true
    i += 1
  end

  # Split and analyze the pathname
  pathname_arr = pathname.split('/')
  while i < pathname_arr.size
    c = pathname_arr[i]

    if c == '.' || c == ''
      # Do nothing
    elsif c == ".."
      if starts_at_root
        raise StandardError.new('Invalid path provided')
      elsif stack.empty? || stack.last == '..'
        stack.push('..')
      else
        stack.pop
      end
    else

      stack.push(c)
    end
    i += 1
  end

  ## Construct pathname in reverse order
  normalized_pathname = ''

  while !stack.empty?
    normalized_pathname = "#{stack.pop}/#{normalized_pathname}"
  end

  normalized_pathname
end

puts normalize('/abc/def/../../../')