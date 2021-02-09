gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/two_sum_1'

class TwoSumTest < Minitest::Test
  def test_two_sum
    adder = TwoSum.new

    nums1 = [2, 7, 11, 15]
    target1 = 9

    expected1 = [0, 1]
    assert_equal expected1, adder.two_sum(nums1, target1)

    nums2 = [3, 2, 4]
    target2 = 6

    expected2 = [1, 2]
    assert_equal expected2, adder.two_sum(nums2, target2)

    nums3 = [3, 3]
    target3 = 6

    expected3 = [0, 1]
    assert_equal expected3, adder.two_sum(nums3, target3)

    nums4 = [0, 4, 3, 0]
    target4 = 0

    expected4 = [0, 3]
    assert_equal expected4, adder.two_sum(nums4, target4)
  end
end
