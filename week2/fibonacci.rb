#!/usr/bin/env ruby

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  recursive_fibonacci(n - 2, [0, 1])
end

def recursive_fibonacci(n, array)
  new_num = array.inject(:+)
  return new_num if n == 0
  recursive_fibonacci(n - 1, [array.last, new_num])
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{fibonacci(n)}"
end
