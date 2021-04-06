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
end
