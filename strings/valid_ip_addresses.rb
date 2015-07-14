def print_valid_ip_address(ip_string)
  return nil if ip_string.nil

  (1...4).each do |i|
    first = ip_string[0...i]
    return false unless valid_ip?(first)

    (i...i+3).each do |j|
      second = ip_string[i...j]
      return false unless valid_ip?(second)

      (j...j+3).each do |k|
        third = ip_string[j...k]
        fourth = ip_string[k...-1]
        return false unless valid_ip(third) && valid_ip(fourth)

        ## Validated successfully
        puts "#{first}.#{second}.#{third}.#{fourth}"
      end
    end
  end
end

def valid_ip(str)
  return false if str == '00' || str == '000'
  return false if str.to_i > 255

  return true
end