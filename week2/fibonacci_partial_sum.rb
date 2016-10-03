#!/usr/bin/env ruby

def fibonacci_partial_sum(m, n)
  sum_n = huge_fibonacci(n + 2, 10) - 1
  sum_m = huge_fibonacci(m + 1, 10) - 1
  (sum_n - sum_m) % 10
end

def huge_fibonacci(n, m) # O(n)
  period = pisano_period(m)

  remainder = n % period

  first, second = [0, 1]

  result = remainder

  (1...remainder).each do |i|
    result = (first + second) % m
    first = second
    second = result
  end

  return result
end

def pisano_period(m)
  first = 0
  second = 1
  res = 1

  (2..m*m).each do |i|
    res = (first + second) % m
    first = second
    second = res

    return i - 1 if (first == 0) && (second == 1)
  end
end

if __FILE__ == $0
  m, n = gets.split().map(&:to_i)
  puts "#{fibonacci_partial_sum(m, n)}"
end
