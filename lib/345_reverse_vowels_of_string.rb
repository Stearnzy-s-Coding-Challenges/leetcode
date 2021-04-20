class ReverseVowels
  def find_vowels(string)
    all_vowels = ['a', 'e', 'i', 'o', 'u']
    letters = string.split('')

    letters.select do |letter|
      all_vowels.include?(letter)
    end
  end
end
