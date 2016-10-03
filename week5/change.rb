def greedy_change(coins, money)
  sorted_coins = coins.sort.reverse
  change = []
  i = 0

  while money > 0
    while sorted_coins[i] <= money
      coin = sorted_coins[i]
      change.push(coin)
      money -= coin
    end
    i += 1
  end

  change.size
end

def recursive_change(coins, money)
  return 0 if money == 0

  min_num_coins = money
  coins.each do |coin|
    if money >= coin
      num_coins = recursive_change(coins, money - coin) + 1
      min_num_coins = num_coins if num_coins < min_num_coins
    end
  end

  min_num_coins
end

def dynamic_prog_change(coins, money)
  
end
