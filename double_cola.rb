def whoIsNext(array, n)
  queue = array

  for i in 1..n do
    element = queue.delete_at(0)
    queue.push(element)
    queue.push(element)
  end

  queue.pop
end

