class SearchInsertPosition
  def search_insert(nums, target)
    found = nums.index(target)

    if !found.nil?
      found
    else
      nums.each_with_index do |n, index|
        return index if n > target
      end
      nums.count
    end
  end
end
