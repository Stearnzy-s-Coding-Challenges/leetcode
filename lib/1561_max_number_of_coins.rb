class MaxCoins
  def max_coins(piles)
    #? Want Bob to get 3 lowest at all times
    #? All piles divisible by 3 == Omit lowest 3
    #? I get every second set

    piles.sort!.reverse!
    turns = piles.count / 3

    turns.times do
      piles.pop
    end

    count = 0

    piles.each_with_index do |coins, index|
      count += coins if index.odd?
    end

    count
  end
end
