class FirstMissingPositive
  def first_missing_positive(nums)
    count = 0

    loop do
      count += 1
      unless nums.include?(count)
        return count
        break
      end
    end
  end
end
