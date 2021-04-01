gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/807_city_skyline'

class CitySkylineTest < Minitest::Test
  def test_it_exists
    skyline = CitySkyline.new
    assert_instance_of CitySkyline, skyline
  end

  def test_builds_l_r_skyline
    grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
    skyline = CitySkyline.new

    assert_equal [8, 7, 9, 3], skyline.l_r_skyline(grid)
  end

  def test_builds_t_b_skyline
    grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
    skyline = CitySkyline.new

    assert_equal [9, 4, 8, 7], skyline.t_b_skyline(grid)
  end
end
