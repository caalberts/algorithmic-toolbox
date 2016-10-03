#!/usr/bin/env ruby
# by Andronik Ordian

def max_pairwise_product(a)
  first = 0
  second = 0

  n = a.size

  (0..n-1).each do |i|
    if a[i] > first
      second = first
      first = a[i]
    elsif a[i] > second
      second = a[i]
    end
  end

  first * second
end

if __FILE__ == $0
  _ = gets.split().map(&:to_i)
  b = gets.split().map(&:to_i)
  puts "#{max_pairwise_product(b)}"
end
