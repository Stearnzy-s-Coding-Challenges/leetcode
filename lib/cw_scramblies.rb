class Scramblies
  def scramble(s1, s2)
    return false if s1.length < s2.length

    s1_split = s1.split('')
    s2_split = s2.split('')

    s2_split.each do |letter|
      if !s1_split.include?(letter)
        return false
      else
        s1_split.delete_at(s1_split.find_index(letter))
      end
    end

    true
  end
end
