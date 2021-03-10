# MUST REASSESS FOR LINKED LIST ITEMS



# gem 'minitest', '~> 5.2'
# require 'minitest/autorun'
# require 'minitest/pride'
# require_relative '../lib/merge_two_sorted_lists_21'

# class MergeTwoTest < Minitest::Test
#   def test_it_exists
#     merger = MergeTwo.new

#     assert_instance_of MergeTwo, merger
#   end

#   def test_two_arrays_merge_to_one_array
#     merger = MergeTwo.new
#     list1 = [1, 2, 3, 4, 5]
#     list2 = [2, 3, 5, 6, 7]

#     result = merger.merge_two(list1, list2)

#     assert_instance_of Array, result
#   end

#   def test_result_array_contains_all_elements
#     merger = MergeTwo.new
#     list1 = [1, 2, 3, 4, 5]
#     list2 = [2, 3, 5, 6, 7]

#     result = merger.merge_two(list1, list2)

#     assert_equal 10, result.count
#   end

#   def test_result_array_is_sorted
#     merger = MergeTwo.new
#     list1 = [1, 2, 3, 4, 5]
#     list2 = [2, 3, 5, 6, 7]

#     result = merger.merge_two(list1, list2)
#     expected = [1, 2, 2, 3, 3, 4, 5, 5, 6, 7]

#     assert_equal expected, result.sort
#   end

#   def test_result_will_take_in_remainder_of_whats_left_if_lists_are_different_sizes
#     merger = MergeTwo.new
#     list1 = [1, 2, 3]
#     list2 = [2, 3, 5, 6, 7]

#     result = merger.merge_two(list1, list2)
#     expected = [1, 2, 2, 3, 3, 5, 6, 7]

#     assert_equal expected, result
#   end
# end
