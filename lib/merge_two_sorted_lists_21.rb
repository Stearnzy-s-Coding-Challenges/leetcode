class MergeTwo
  def merge_two(list1, list2)
    acc = []

    while !list1.nil? && !list2.nil?
      if list1.val <= list2.val
        acc.push(list1.val)
        list1 = list1.next
      else
        acc.push(list2.val)
        list2 = list2.next
      end
    end

    if !list1.nil?
      until list1.nil?
        acc.push(list1.val)
        list1 = list1.next
      end
    elsif !list2.nil?
      until list2.nil?
        acc.push(list2.val)
        list2 = list2.next
      end
    end

    acc
  end
end
