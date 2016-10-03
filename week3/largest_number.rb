# !/usr/bin/env ruby

def largest_number(numbers)
  result = []

  while numbers.size > 0
    max = numbers.min
    index = 0
    numbers.each_with_index do |n, i|
      if pick_n(n, max)
        max = n
        index = i
      end
    end

    result.push(max)
    numbers.delete_at(index)
  end

  result.join.to_i
end

def pick_n(n, max)
  n_max = n.to_s + max.to_s
  max_n = max.to_s + n.to_s

  n_max.to_i >= max_n.to_i
end

def get_length(n)
  n.to_s.length
end

if __FILE__ == $0
  n = gets.to_i
  numbers = gets.split(' ').map(&:to_i)

  puts "#{largest_number(numbers)}"
end
