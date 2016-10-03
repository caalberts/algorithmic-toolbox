# !/usr/bin/env ruby

def allocate_prize(n)
  l = 1
  list = []

  while n > 0
    if n <= 2 * l
      list.push(n)
      n = 0
    else
      list.push(l)
      n -= l
      l += 1
    end
  end

  list
end

def allocate_recursive(k, l, list)
  return list if k == 0
  if k <= 2 * l
    return list.push(k)
  else
    new_list = list.push(l)
    allocate_recursive(k - l, l + 1, new_list)
  end
end

if __FILE__ == $0
  n = gets.to_i
  result = allocate_prize(n)
  puts "#{result.size}"
  puts "#{result.join(' ')}"
end
