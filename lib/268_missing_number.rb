class MissingNumber
  def missing_number(nums)
    y = nums.count
    range = (0..y)

    range.each do |n|
      return n unless nums.include?(n)
    end
  end
end
