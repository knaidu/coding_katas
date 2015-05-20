def find_pair(array, sum)
  number_hash = convert_to_hash(array)
  array.each do |e|
    number_hash[e] -=1
    if pair_exists?
      puts "Pair found: #{e} and #{sum-e}"
      break
    end
    number_hash[e] +=1
  end

  puts 'Pair not found'
end

def pair_exists?(e, sum)
  number_hash.include?(sum - e) && number_hash[sum-e] > 0
end

def convert_to_hash(array)
  number_hash = {}
  array.each do |e|
    if number_hash.include?(e)
      number_hash[e] += 1
    else
      number_hash[e] = 1
    end
  end

  number_hash
end

find_pair([1,2,3,4,5], 5)