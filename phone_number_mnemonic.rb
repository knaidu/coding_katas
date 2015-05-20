class PhoneMnemonic
  def initialize(phone_number)
    cell_phone_mapping = {
        '2' => 'ABC',
        '3' => 'DEF',
        '4' => 'GHI',
        '5' => 'JKL',
        '6' => 'MNO',
        '7' => 'PQRS',
        '8' => 'TUV',
        '9' => 'WXYZ',
        '0' => '',
        '1' => ''
    }

    puts generate_char_sequences(cell_phone_mapping, phone_number)
  end

  def generate_char_sequences(cell_phone_mapping, phone_number)
    result_array = initialize_result_array(cell_phone_mapping[phone_number[phone_number.size - 1]])

    i = phone_number.size - 2
    while (i >= 0)
      next_result_array = combine_char_with_result_array(cell_phone_mapping[phone_number[i]], result_array)
      result_array = next_result_array
      next_result_array = []
      i -= 1
    end

    result_array
  end

  # Initialize result set with all values from the last number
  def initialize_result_array(letters)
    result_array = []
    letters.each_char do |c|
      result_array << c
    end

    result_array
  end

  def combine_char_with_result_array(letters, result_array)
    next_result_array = []
    letters.each_char do |c|
      result_array.each do |r|
        next_result_array << c + r
      end
    end

    next_result_array
  end
end

PhoneMnemonic.new('2345')