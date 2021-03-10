class RomanToInteger
  def roman_to_int(s)
    roman = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    }

    sum = 0
    subtractor = 0

    characters = s.split('')

    characters.each_with_index do |this_char, index|
      prev_char = characters[index - 1] unless index == 0
      next_char = characters[index + 1] unless index == characters.length - 1

      if !next_char.nil? && roman[this_char.to_sym] < roman[next_char.to_sym]
        subtractor += roman[this_char.to_sym]
      elsif !prev_char.nil? && roman[prev_char.to_sym] < roman[this_char.to_sym]
        sum += (roman[this_char.to_sym] - subtractor)
        subtractor = 0
      else
        sum += roman[this_char.to_sym]
      end
    end

    sum
  end
end
