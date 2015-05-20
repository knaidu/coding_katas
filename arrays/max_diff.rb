def compute_max_diff(elements)
  max_diff_so_far = 0
  min_so_far = 999
  elements.each do |e|
    max_diff_so_far = [max_diff_so_far, e - min_so_far].max
    min_so_far = [e, min_so_far].min
  end

  max_diff_so_far
end


compute_max_diff([1,2,3,4,5,6,7,8,9])