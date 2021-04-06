gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/9_palindrome_number'

class PalindromeNumberTest < Minitest::Test
  def test_it_exists
    checker = PalindromeNumber.new
    assert_instance_of PalindromeNumber, checker
  end

  def test_it_will_return_false_for_negative_numbers
    checker = PalindromeNumber.new
    n = -5

    assert_equal false, checker.is_palindrome(n)
  end

  def test_it_returns_false_for_a_non_palindrome_number
    checker = PalindromeNumber.new
    n = 123

    assert_equal false, checker.is_palindrome(n)
  end

  def test_it_returns_true_for_a_palindrome_number
    checker = PalindromeNumber.new
    n = 121

    assert checker.is_palindrome(n)
  end

  def test_it_returns_true_for_a_single_digit_number
    checker = PalindromeNumber.new
    n = 1

    assert checker.is_palindrome(n)
  end
end
