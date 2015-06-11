def which_appears_twice(array, n)
  expected_sum = (n * (n+1))/2
  sum = 0

  array.each { |e| sum += e }

  sum - expected_sum
end

puts which_appears_twice([1,2,3,4,5,6,6,7], 7)