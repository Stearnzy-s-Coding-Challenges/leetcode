gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/345_reverse_vowels_of_string'

class ReverseVowelsTest < Minitest::Test
  def test_it_exists
    reverser = ReverseVowels.new
    assert_instance_of ReverseVowels, reverser
  end

  def test_vowels_are_identified
    reverser = ReverseVowels.new
    string = 'hello'

    assert_equal ['e', 'o'], reverser.find_vowels(string)
  end

  def test_vowel_finder_for_vowel_repeats
    reverser = ReverseVowels.new
    string = 'leetcode'

    assert_equal ['e', 'e', 'o', 'e'], reverser.find_vowels(string)
  end

  def test_vowels_reversed
    reverser = ReverseVowels.new
    string = 'leetcode'

    assert_equal ['e', 'o', 'e', 'e'], reverser.vowels_reversed(string)
  end
end
