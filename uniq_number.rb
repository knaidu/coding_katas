# Given the array of IDs, which contains many duplicate integers and one unique integer,
# find the unique integer. All integers have one duplicate except the unique integer.

def uniq_integer(input_array)
  unique = 0
  input_array.each do |num|
    unique = unique ^ num
  end

  unique
end

uniq_integer([1,1,2,2,3,3,4])
uniq_integer([1,1,0 ])
