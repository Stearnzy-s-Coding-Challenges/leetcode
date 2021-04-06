class LongestWordInDictionary
  def longest_word(words)
    if words.length == 1
      return words[0]
    end

    acc = []
    possible_results = []

    words.sort.each_with_index do |word, index|
      if acc.empty?
        acc << word
      elsif word[0..-2] == acc.last && index == words.length - 1
        possible_results << word
      elsif word[0..-2] == acc.last
        acc << word
      elsif word[0..-2] != acc.last
        possible_results << acc.last
        acc = []
      end
    end

    words_by_length = possible_results.sort_by do |word|
      word.length
    end.last

    return answer
  end
end
