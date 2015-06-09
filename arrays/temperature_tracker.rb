class TemperatureTracker
  attr_accessor :sum, :min, :max, :count, :mode, :max_occurrence
  attr_accessor :temperature_hash

  def initialize
    @temperature_hash = {}
    @sum = 0
    @max_occurrence = 0
    @min = 500
    @max = -999
    @count = 0
  end

  def insert(temperature)
    if @temperature_hash[temperature]
      @temperature_hash[temperature] += 1
      if @temperature_hash[temperature] > @max_occurrence
        @max_occurrence = @temperature_hash[temperature]
        @mode = temperature
      end
    else
      @temperature_hash[temperature] = 1
    end

    @sum += temperature
    @max = temperature if temperature > @max
    @min = temperature if temperature < @min
    @count += 1
  end

  def get_max()
    @max
  end

  def get_min()
    @min
  end

  def get_mean()
    @sum / @count
  end

  def get_mode()
    @max_occurrence == 0 ? @min : @mode
  end
end

tt = TemperatureTracker.new

tt.insert(1)
tt.insert(1)
tt.insert(1)
tt.insert(1)
tt.insert(2)
tt.insert(2)
tt.insert(2)
tt.insert(2)
tt.insert(2)
tt.insert(2)
tt.insert(2)
tt.insert(3)
tt.insert(4)
tt.insert(5)

puts "Max: #{tt.get_max}"
puts "Min: #{tt.get_min}"
puts "Mean: #{tt.get_mean}"
puts "Mode: #{tt.get_mode}"
