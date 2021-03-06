#!/usr/bin/env ruby

def fibonacci_last_digit(n)
  huge_fibonacci(n, 10)
end

def huge_fibonacci(n, m)
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
  n = gets.to_i
  puts "#{fibonacci_last_digit(n)}"
end
