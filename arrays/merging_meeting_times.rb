class Interval
  attr_accessor :start, :stop

  def initialize(start, stop)
    @start = start
    @stop = stop
  end
end

# Assuming meeting have already been sorted
def merge(sorted_times)
  return nil if sorted_times.nil?

  merged_meetings = []

  # Start with the first interval and treat it as merged
  merged_start = sorted_times[0].start
  merged_stop = sorted_times[0].stop

  sorted_times.each do |current_interval|
    # if they can be merged, merge them
    if merged_stop > current_interval.start
      merged_stop = merged_stop >= current_interval.stop ? merged_stop : current_interval.stop

    # distinct intervals found, append to result
    else
      merged_meetings << Interval.new(merged_start, merged_stop)
      merged_start = current_interval.start
      merged_stop = current_interval.stop
    end
  end

  # append final interval to the result
  merged_meetings << Interval.new(merged_start, merged_stop)

  merged_meetings
end

sorted_intervals = [Interval.new(1,3), Interval.new(2,4), Interval.new(3,8)]
puts merge(sorted_intervals).inspect