gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/41_first_missing_positive'

class FirstMissingPositiveTest < Minitest::Test
  def test_first_missing_positive
    locator = FirstMissingPositive.new

    input1 = [1, 2, 0]
    expected1 = 3
    assert_equal expected1, locator.first_missing_positive(input1)

    input2 = [3, 4, -1, 1]
    expected2 = 2
    assert_equal expected2, locator.first_missing_positive(input2)

    input3 = [7,8,9,11,12]
    expected3 = 1
    assert_equal expected3, locator.first_missing_positive(input3)
  end
end
