gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/720_longest_word_in_dictionary'

class LongestWordInDictionaryTest < Minitest::Test
  def test_it_exists
    machine = LongestWordInDictionary.new

    assert_instance_of LongestWordInDictionary, machine
  end

  def test_it_can_return_word_from_one_element_array
    machine = LongestWordInDictionary.new
    words = ['test']

    assert_equal 'test', machine.longest_word(words)
  end

  def test_it_can_find_biggest_word_from_sorted_array
    machine = LongestWordInDictionary.new
    words = ["w","wo","wor","worl", "world"]

    assert_equal 'world', machine.longest_word(words)
  end

  def test_it_can_find_biggest_word_from_unsorted_array
    machine = LongestWordInDictionary.new
    words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]

    assert_equal 'apple', machine.longest_word(words)
  end

  def test_it_can_find_biggest_word_in_lexicographical_order
    machine = LongestWordInDictionary.new
    words = ["m","mo","moc","moch","mocha","l","la","lat","latt","latte","c","ca","cat"]

    assert_equal 'latte', machine.longest_word(words)
  end

  def test_can_work_with_unsorted_gibberish_array
    machine = LongestWordInDictionary.new
    words = ["yo","ew","fc","zrc","yodn","fcm","qm","qmo","fcmz","z","ewq","yod","ewqz","y"]

    assert_equal 'yodn', machine.longest_word(words)
  end

  def test_passes_another_gibberish_array
    machine = LongestWordInDictionary.new
    words = ["k","lg","it","oidd","oid","oiddm","kfk","y","mw","kf","l","o","mwaqz","oi","ych","m","mwa"]

    assert_equal 'oiddm', machine.longest_word(words)
  end

  def test_yet_another_gibberish_array
    machine = LongestWordInDictionary.new
    words = ["rac","rs","ra","on","r","otif","o","onpdu","rsf","rs","ot","oti","racy","onpd"]

    assert_equal 'otif', machine.longest_word(words)
  end
end
