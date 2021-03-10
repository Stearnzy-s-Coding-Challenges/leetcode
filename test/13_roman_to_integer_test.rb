gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/13_roman_to_integer_'

class RomanToIngegerTest < Minitest::Test
  def test_convert_numerals
    converter = RomanToInteger.new

    input1 = 'III'
    expected1 = 3
    assert_equal expected1, converter.roman_to_int(input1)

    input2 = 'IV'
    expected2 = 4
    assert_equal expected2, converter.roman_to_int(input2)

    input3 = 'IX'
    expected3 = 9
    assert_equal expected3, converter.roman_to_int(input3)

    input4 = 'LVIII'
    expected4 = 58
    assert_equal expected4, converter.roman_to_int(input4)

    input5 = 'MCMXCIV'
    expected5 = 1994
    assert_equal expected5, converter.roman_to_int(input5)
  end
end
