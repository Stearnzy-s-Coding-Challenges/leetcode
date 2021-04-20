class ReverseVowels
  ALL_VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

  def find_vowels(string)
    letters = string.split('')

    letters.select do |letter|
      ALL_VOWELS.include?(letter)
    end
  end

  def reverse_vowels(string)
    included_vowels = find_vowels(string)
    split_string = string.split('')

    split_string.map do |letter|
      if ALL_VOWELS.include?(letter)
        included_vowels.pop
      else
        letter
      end
    end.join('')
  end
end
