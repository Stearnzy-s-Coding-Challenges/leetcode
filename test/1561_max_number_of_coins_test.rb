gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/1561_max_number_of_coins'

class MaxCoinsTest < Minitest::Test
  def test_it_exists
    counter = MaxCoins.new
    assert_instance_of MaxCoins, counter
  end

  def test_pile_of_three
    counter = MaxCoins.new
    piles = [2, 4, 5]

    assert_equal 4, counter.max_coins(piles)
  end

  def test_pile_of_six
    counter = MaxCoins.new
    piles = [2, 4, 1, 2, 7, 8]

    assert_equal 9, counter.max_coins(piles)
  end

  def test_pile_of_three
    counter = MaxCoins.new
    piles = [9, 8, 7, 6, 5, 1, 2, 3, 4]

    assert_equal 18, counter.max_coins(piles)
  end
end
