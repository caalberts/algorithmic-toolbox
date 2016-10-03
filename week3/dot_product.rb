# !/usr/bin/env ruby

def dot_product(n, profits, clicks)
  sum = 0

  profits.sort!{ |a, b| b <=> a}
  clicks.sort!{ |a, b| b <=> a}

  profits.each_with_index do |profit, i|
    sum += profit * clicks[i]
  end

  sum
end

if __FILE__ == $0
  n = gets.to_i
  profits = gets.split(' ').map(&:to_i)
  clicks = gets.split(' ').map(&:to_i)

  puts "#{dot_product(n, profits, clicks)}"
end
