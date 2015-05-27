class RunLength
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def encode
    return 'INVALID INPUT' if @data.nil?

    result = ''

    i = 0
    j = i

    while i < data.length
      j += 1 if j < data.length

      if data[i] != data[j]
        result = "#{result}#{j-i}#{data[i]}"
        i = j
      end
    end

    result
  end

  def decode(encoded_data)
    return 'Invalid encoding' if encoded_data.nil? || encoded_data.length < 2

    i = 0
    j = 1
    result = ''

    while j <= encoded_data.length
      if char?(encoded_data[j])
        result = expand(encoded_data[i...j].to_i, encoded_data[j], result)
      else
        j += 1
        next
      end

      i = j+1
      j = i+1
    end

    result
  end

  def char?(c)
    c.to_i == 0 && !("#{c.to_i}" == c)
  end

  def expand(num, c, result)
    num.times do
      result = "#{result}#{c}"
    end

    result
  end
end

data = 'aaaaaaaaaaabbAA'
rl = RunLength.new(data)
encoded_data = rl.encode
puts "encoded_data: #{encoded_data}"
puts rl.decode("1b100a")
puts rl.decode(encoded_data) == data
