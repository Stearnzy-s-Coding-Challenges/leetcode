gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/58_length_last_word'

class LengthLastWordTest < Minitest::Test
  def test_it_exists
    tool = LengthLastWord.new

    assert_instance_of LengthLastWord, tool
  end

  def test_no_last_word_returns_zero
    input = ' '
    tool = LengthLastWord.new

    assert_equal 0, tool.last_word_count(input)
  end

  def test_last_word_gets_counted
    input = 'Hello there'
    tool = LengthLastWord.new

    assert_equal 5, tool.last_word_count(input)
  end

  def test_last_word_gets_counted_with_other_symbols
    input = ';jkas lawekjf ;5$9q0'
    tool = LengthLastWord.new

    assert_equal 6, tool.last_word_count(input)
  end
end
