def fibo_helper(n, fibo_hash)
  if n == 0 || n == 1
    return n
  end

  return fibo_hash[n] if fibo_hash[n]

  fibo_helper(n-1, fibo_hash) + fibo_helper(n-2, fibo_hash)
end

def fibo_recursive(n)
  fibo_hash = {}

  fibo_helper(n, fibo_hash)
end

def fibo_iterative(n)

  return n if n == 0 || n == 1

  i = 2
  current = 1
  prev = 0
  fib = current + prev

  while i <= n
    fib = current + prev
    prev = current
    current = fib
    i += 1
  end

  fib
end

puts fibo_recursive(6)
puts fibo_iterative(6)