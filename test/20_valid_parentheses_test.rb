gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/20_valid_parentheses'

class ValidParenthesesTest < Minitest::Test
  def test_it_exists
    validator = ValidParentheses.new
    assert_instance_of ValidParentheses, validator
  end

  def test_return_false_if_input_starts_with_closing_parens
    string = "}()}"

    validator = ValidParentheses.new
    assert_equal false, validator.is_valid(string)
  end

  def test_return_false_if_input_is_odd
    string = "{}["

    validator = ValidParentheses.new
    assert_equal false, validator.is_valid(string)
  end

  def test_will_pass_sets_of_parens
    string = "()[]{}"

    validator = ValidParentheses.new
    assert validator.is_valid(string)
  end

  def test_return_false_if_mismatched_parens
    string = "(}"

    validator = ValidParentheses.new
    assert_equal false, validator.is_valid(string)
  end

  def test_successfully_validates_nested_parens
    string = '({[{[()]}]})'

    validator = ValidParentheses.new
    assert validator.is_valid(string)
  end

  def test_will_pass_complex_but_valid_input
    string = '{[]}()[]{{[()]}}'

    validator = ValidParentheses.new
    assert validator.is_valid(string)
  end
end
