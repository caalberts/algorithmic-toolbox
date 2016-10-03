# !usr/bin/env ruby

def search(n, sequence)
  binary_search(n, 0, sequence.size - 1,sequence)
end

def binary_search(n, low, high, sequence)
  return - 1 if low > high

  mid = (low + high) / 2
  return mid if sequence[mid] == n

  if sequence[mid] < n
    binary_search(n, mid + 1, high, sequence)
  else
    binary_search(n, low, mid - 1, sequence)
  end
end

def find_indices(numbers, pool)
  numbers.map { |n| search(n, pool) }
end

if __FILE__ == $0
  _ = gets
  numbers = gets.split(' ').map(&:to_i)

  puts "#{has_majority(numbers)}"
end
