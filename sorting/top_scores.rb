def top_scores(scores, max_score)
  # Count number of times a score has been seen
  scores_count = [0] * max_score

  # Count
  scores.each do |score|
    scores_count[score] += 1
  end

  sorted_scores = []

  # Print in sorted order
  scores_count.each_with_index do |count, i|
    count.times { sorted_scores << i }
  end

  sorted_scores
end

puts top_scores([3,4,3,2,4,3,5,6,7,5,6,7,1,2,8,9,9], 10).inspect