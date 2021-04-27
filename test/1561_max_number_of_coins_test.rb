gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/1561_max_number_of_coins'

class MaxCoinsTest < Minitest::Test
  def test_it_exists
    counter = MaxCoins.new
    assert_instance_of MaxCoins, counter
  end
end
