# !usr/bin/env ruby

def parentheses(sequence)
  numbers = []
  operations = []
  sequence.split('').each_with_index do |symbol, i|
    if i % 2 == 0
      numbers.push(symbol.to_i)
    else
      operations.push(symbol)
    end
  end

  min_table, max_table = build_tables(numbers)

  (1..numbers.size-1).each do |s|
    (1..numbers.size-s).each do |i|
      j = i + s
      min_table[i-1][j-1], max_table[i-1][j-1] = min_max(i, j, min_table, max_table, operations)
    end
  end

  # puts "min table"
  # min_table.each do |row|
  #   puts "#{row}"
  # end
  # puts "max table"
  # max_table.each do |row|
  #   puts "#{row}"
  # end

  max_table[0][numbers.size-1]
end

def min_max(i, j, min_table, max_table, op)
  min, max = false, false
  (i..j-1).each do |k|
    a = max_table[i-1][k-1].send(op[k-1], max_table[k][j-1])
    b = max_table[i-1][k-1].send(op[k-1], min_table[k][j-1])
    c = min_table[i-1][k-1].send(op[k-1], max_table[k][j-1])
    d = min_table[i-1][k-1].send(op[k-1], min_table[k][j-1])
    min = (min && [min, a, b, c, d].min) || [a, b, c, d].min
    max = (max && [max, a, b, c, d].max) || [a, b, c, d].max
  end
  [min, max]
end

def build_tables(numbers)
  min_table = Array.new(numbers.size)
  max_table = Array.new(numbers.size)
  numbers.each_with_index do |_, i|
    min_table[i] = []
    max_table[i] = []
    numbers.each_with_index do |number, j|
      if i == j
        min_table[i].push(number)
        max_table[i].push(number)
      else
        min_table[i].push(0)
        max_table[i].push(0)
      end
    end
  end

  [min_table, max_table]
end

if __FILE__ == $0
  sequence = gets
  puts "#{parentheses(sequence)}"
end
