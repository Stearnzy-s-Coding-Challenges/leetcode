gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/268_missing_number'

class MissingNumberTest < Minitest::Test
  def test_missing_number
    locator = MissingNumber.new

    input1 = [3,0,1]
    expected1 = 2
    assert_equal expected1, locator.missing_number(input1)

    input2 = [0, 1]
    expected2 = 2
    assert_equal expected2, locator.missing_number(input2)

    input3 = [9,6,4,2,3,5,7,0,1]
    expected3 = 8
    assert_equal expected3, locator.missing_number(input3)

    input4 = [0]
    expected4 = 1
    assert_equal expected4, locator.missing_number(input4)
  end
end
