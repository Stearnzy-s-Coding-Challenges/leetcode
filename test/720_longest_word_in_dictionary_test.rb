gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/720_longest_word_in_dictionary'

class LongestWordInDictionaryTest < Minitest::Test
  def test_it_exists
    machine = LongestWordInDictionary.new

    assert_instance_of LongestWordInDictionary, machine
  end
end
