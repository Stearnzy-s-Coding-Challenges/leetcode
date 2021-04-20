class ReverseVowels
  def find_vowels(string)
    all_vowels = ['a', 'e', 'i', 'o', 'u']
    letters = string.split('')

    letters.select do |letter|
      all_vowels.include?(letter)
    end
  end

  def vowels_reversed(string)
    find_vowels(string).reverse
  end

  def reverse_vowels(string)
    vowels_reversed = find_vowels(string).reverse
  end
end
