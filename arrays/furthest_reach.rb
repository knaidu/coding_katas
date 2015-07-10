def can_reach_end(arr)
  furthest_reach = 0
  i = 0

  while (i <= furthest_reach)
    furthest_reach = [furthest_reach, i + arr[i]].max
    i += 1
    return true if furthest_reach > arr.size - 1
  end

  return false
end

puts can_reach_end([3,3,1,0,2,0,1])
puts can_reach_end([3,2,0,0,2,0,1])