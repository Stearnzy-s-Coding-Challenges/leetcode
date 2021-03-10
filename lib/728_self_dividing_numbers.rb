class SelfDividingNumbers
  def self_dividing_numbers(left, right)
    acc = []
    range = (left..right)
    range.each do |num|
      num_split = num.to_s.chars.map(&:to_i)
      acc << num if !num_split.include?(0) && num_split.all? { |digit| (num % digit).zero? }
    end
    acc
  end
end
