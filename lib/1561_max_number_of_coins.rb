class MaxCoins
  def max_coins(piles)
    #? Want Bob to get 3 lowest at all times
    #? All piles divisible by 3 == Omit lowest 3
    #? I get every second set

    piles.sort!.reverse!
    turns = piles.count / 3

    count = 0

    turns.times do |iteration|
      #? Pay attention to math like this
      count += piles[iteration * 2 + 1]
    end

    count
  end
end
