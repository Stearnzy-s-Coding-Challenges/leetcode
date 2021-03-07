gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/self_dividing_numbers_728'

class SelfDividingNumbersTest < Minitest::Test
  def test_nums_containing_zeros_will_not_count
    checker = SelfDividingNumbers.new

    assert_equal [], checker.self_dividing_numbers(808, 808)
  end

  def test_self_dividing_numbers_returns_applicable_numbers
    checker = SelfDividingNumbers.new

    expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
    assert_equal expected, checker.self_dividing_numbers(1, 22)
  end
end
