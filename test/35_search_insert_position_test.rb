gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/35_search_insert_position'

class SearchInsertPositionTest < Minitest::Test
  def test_it_exists
    searcher = SearchInsertPosition.new
    assert_instance_of SearchInsertPosition, searcher
  end

  def test_that_search_returns_index_for_existing_target
    searcher = SearchInsertPosition.new
    nums = [1, 2, 3]
    target = 3

    assert_equal 2, searcher.search_insert(nums, target)
  end

  def test_search_returns_index_for_missing_target
    searcher = SearchInsertPosition.new
    nums = [1, 3, 4]
    target = 2

    assert_equal 1, searcher.search_insert(nums, target)
  end

  def test_search_returns_index_greater_than_given_array
    searcher = SearchInsertPosition.new
    nums = [1, 2, 3, 4]
    target = 5

    assert_equal 4, searcher.search_insert(nums, target)
  end

  def test_search_returns_index_smaller_than_given_array
    searcher = SearchInsertPosition.new
    nums = [1, 2, 3, 4]
    target = 0

    assert_equal 0, searcher.search_insert(nums, target)
  end

  def test_search_returns_index_when_array_is_one_element
    searcher = SearchInsertPosition.new
    nums = [1]
    target = 0

    assert_equal 0, searcher.search_insert(nums, target)
  end
end
