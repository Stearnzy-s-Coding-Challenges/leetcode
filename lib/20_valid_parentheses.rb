class ValidParentheses
  def is_valid(s)
    parens = {
      '(' => ')',
      '[' => ']',
      '{' => '}'
    }

    return false if s.length.odd?

    split_parens = s.split('')

    if parens.keys.any?(split_parens.first)
      acc = []

      split_parens.each do |p|
        if parens.keys.any?(p)
          acc << p
        elsif parens.values.any?(p) && p == parens[acc.last]
          acc.pop
        else
          return false
        end
      end

      if acc.empty?
        true
      else
        false
      end

    else
      false
    end
  end
end
