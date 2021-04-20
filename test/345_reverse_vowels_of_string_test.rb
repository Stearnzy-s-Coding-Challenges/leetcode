gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/345_reverse_vowels_of_string'

class ReverseVowelsTest < Minitest::Test
  def test_it_exists
    reverser = ReverseVowels.new
    assert_instance_of ReverseVowels, reverser
  end
end
