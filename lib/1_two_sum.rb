class TwoSum
  def two_sum(nums, target)
    result = {}

    nums.each_with_index do |value, index|
      offset = target - value

      if result.include?(offset)
        return [result[offset], index]
      else
        result[value] = index
      end
    end
  end
end
