# Given a string s consists of some words separated by spaces, return the length of the last word in the string. If the last word does not exist, return 0.

# A word is a maximal substring consisting of non-space characters only.

class LengthLastWord
  def last_word_count(input)
    split_input = input.split(" ")
    if split_input.empty?
      0
    else
      split_input.last.length
    end
  end
end
