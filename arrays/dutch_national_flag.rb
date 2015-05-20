# Write a function that takes an array A of length n and an index i into A, and
# rearranges the elements such that all elements less than A[i] appear first,
# followed by elements equal to A[i], followed by elements greater than A[i].
# Your algorithm should have O(1) space complexity and O(n) time complexity.

def dutch_national_flag_a(a, i)
  j = 0
  k = a.length - 1
  while j < k do
    puts "j: #{j}, k: #{k}"
    if a[j] < a[i]
      j += 1
    elsif a[k] > a[i]
      k -= 1
    else
      swap(j, k, a)
    end
  end

  a
end

def swap(x, y, a)
  temp = a[x]
  a[x] = a[y]
  a[y] = temp
end

def dnf(a, i)
  pivot = a[i]

  smaller = 0
  equal = 0
  larger = a.length - 1

  while(equal <= larger) do
    if a[equal] < pivot
      swap(equal, smaller, a)
      smaller += 1
      equal += 1
    elsif a[equal] == pivot
      equal += 1
    else # a[equal] > pivot
      swap(equal, larger, a)
      larger -= 1
    end
  end

  a
end


dnf([9,8,7,6,5,4,3,2,1], 4)
dutch_national_flag([9,8,7,6,3,6,2,1,6], 3)

dnf([0,1,2,0,1,2,0,1,2,0,1,2], 0)
