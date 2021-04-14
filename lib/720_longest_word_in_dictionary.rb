class LongestWordInDictionary
  def longest_word(words)
    if words.length == 1
      return words[0]
    end

    # HASH BETTER SUITED FOR THIS PROBLEM!



    

  #   acc = []
  #   possible_results =[]

  #   words.sort.each_with_index do |word, index|
  #     if acc.empty? && word.length == 1
  #       acc << word
  #     elsif !acc.empty? && word[0..-2] == acc.last
  #       acc << word
  #     elsif !acc.empty? && word[0..-2] != acc.last && word.length == 1
  #       possible_results << acc.last
  #       acc = []
  #       acc << word
  #     elsif word[0..-2] == acc.last && index == words.length - 1
  #       possible_results << word
  #     end
  #   end

  #   possible_results << acc.last if acc.last[0..-2] == acc[-2]

  #   word_length = possible_results.max_by{|word| word.length}.length
  #   answer = possible_results.delete_if{|word| word.length < word_length}.sort[0]

  #   return answer
  # end


  # def longest_word(words)
#     if words.length == 1
#       return words[0]
#     end

#     acc = []
#     possible_results = []

#     words.sort.each_with_index do |word, index|
#       if acc.empty? && word.length == 1
#         acc << word
#       elsif word[0..-2] == acc.last
#         #  && index == words.length - 1
#         possible_results << word
#       elsif word[0..-2] == acc.last
#         acc << word
#       elsif word[0..-2] != acc.last
#         possible_results << acc.last
#         acc = []
#       end
#     end

#     longest_word = possible_results.compact.sort_by do |word|
#       word.length
#     end.last
# require 'pry'; binding.pry
#     answer = possible_results.find_all do |word|
#       word.length == longest_word.length
#     end.sort.first

#     return answer
#   end
end
