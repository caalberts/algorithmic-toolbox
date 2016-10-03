# !/usr/bin/env ruby

def pack(items, capacity)
  container_weight = 0.0
  container_value = 0.0

  sorted_items = items.sort_by{ |i| i[:value].to_f / i[:weight] }.reverse

  sorted_items.each do |item|
    if (item[:weight] + container_weight <= capacity)
      container_weight += item[:weight]
      container_value += item[:value]
    else
      allowable_weight = capacity - container_weight

      partial_weight = allowable_weight
      partial_value = (partial_weight.to_f / item[:weight]) * item[:value]

      container_value += partial_value
      container_weight += partial_weight
    end
  end

  container_value
end

if __FILE__ == $0
  num_of_items, capacity = gets.split(' ').map(&:to_i)

  i = 0
  items = []

  while i < num_of_items
    value, weight = gets.split(' ').map(&:to_f)
    items.push({
      value: value,
      weight: weight
    })
    i += 1
  end

  puts "#{pack(items, capacity)}"
end
