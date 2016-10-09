# !usr/bin/env rubyif __FILE__ == $0

def pack(capacity, items)
  dynamic_pack(capacity, items)
end

def naive_pack(capacity, items)
  sorted_items = items.sort.reverse
  sorted_items.inject(0) do |sum, item|
    if sum + item <= capacity
      sum + item
    else
      sum
    end
  end
end

def dynamic_pack(capacity, items)
  # capacity 0 1 2 3 4 5 6 7 8
  # ----     0 0 0 0 0 0 0 0 0
  # item 1   0
  # item 2   0
  # item 3   0
  # item n   0

  values = Array.new(items.size + 1)

  (items.size+1).times do |i|
    values[i] = []
    (capacity+1).times do |w|
      values[i].push(0)
    end
  end

  (1..items.size).each do |i|
    (1..capacity).each do |w|
      values[i][w] = values[i-1][w]
      if items[i-1] <= w
        candidate = values[i-1][w - items[i-1]] + items[i-1]
        if values[i][w] < candidate
          values[i][w] = candidate
        end
      end
    end
  end

  values[items.size][capacity]
end

if __FILE__ == $0
  capacity, _ = gets.split(' ').map(&:to_i)
  bars = gets.split(' ').map(&:to_i)

  puts "#{pack(capacity, bars)}"
end
