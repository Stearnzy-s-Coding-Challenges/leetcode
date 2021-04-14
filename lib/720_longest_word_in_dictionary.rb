class LongestWordInDictionary
  def longest_word(words)
    return words[0] if words.length == 1

    words.sort!

    collector = {}
    answer = ''

    words.each do |word|
      if word.length == 1 || collector[word[0..-2]]
        collector[word] = true
        answer = word if word.length > answer.length
      end
    end

    answer
  end
end
