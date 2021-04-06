class PalindromeNumber
  def is_negative(x)
    return false if x.negative?
  end

  def is_palindrome(x)
    is_negative(x)

    x_split = x.to_s.split('')

    while x_split.count > 1
      accumulator = []

      accumulator << x_split.shift
      accumulator << x_split.pop

      return false unless accumulator.all?(accumulator[0])
    end

    true
  end
end
