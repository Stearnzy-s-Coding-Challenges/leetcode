class ReverseVowels
  ALL_VOWELS = ['a', 'e', 'i', 'o', 'u']

  def find_vowels(string)
    # all_vowels = ['a', 'e', 'i', 'o', 'u']
    letters = string.split('')

    letters.select do |letter|
      ALL_VOWELS.include?(letter)
    end
  end

  def vowels_reversed(string)
    find_vowels(string).reverse
  end

  def reverse_vowels(string)
    vowels_reversed = vowels_reversed(string)
    split_string = string.split('')

    split_string.map do |letter|
      if ALL_VOWELS.include?(letter)
        vowels_reversed.shift
      else
        letter
      end
    end.join('')
  end
end
