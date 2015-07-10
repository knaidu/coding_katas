def buy_and_sell_stock_twice(arr)
  # Forward phase
  min_so_far = 999
  max_profit = 0
  first_max_profit = []
  i = 0
  while i < arr.size
    min_so_far = [min_so_far, arr[i]].min
    max_profit = [max_profit, arr[i] - min_so_far].max
    first_max_profit[i] = max_profit
    i += 1
  end

  # Backward phase
  max_so_far = 0
  total_max_profit = 0
  i = arr.size - 1
  while i >= 0
    max_so_far = [max_so_far, arr[i]].max
    total_max_profit = [total_max_profit, (max_so_far - arr[i]) + (first_max_profit[i - 1])].max
  end

  total_max_profit
end