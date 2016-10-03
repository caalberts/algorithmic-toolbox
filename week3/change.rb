# !/usr/bin/env ruby

def change_money(m)
  denominations = [10, 5, 1]
  coins = 0
  i = 0

  while (m > 0) && (i < denominations.size)
    while denominations[i] <= m
      m -= denominations[i]
      coins += 1
    end
    i += 1
  end

  coins
end

if __FILE__ == $0
  m = gets.to_i
  puts "#{change_money(m)}"
end
