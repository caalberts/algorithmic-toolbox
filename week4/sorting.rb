# !usr/bin/env ruby

def sort(numbers)
  randomized_quick_sort(numbers, 0, numbers.size - 1)
end

def randomized_quick_sort(numbers, l, r)
  return numbers if l >= r

  k = rand(r - l + 1) + l
  t = numbers[l]
  numbers[l] = numbers[k]
  numbers[k] = t

  m = partition3(numbers, l, r)

  randomized_quick_sort(numbers, l, m[0] - 1)
  randomized_quick_sort(numbers, m[1] + 1, r)
  return numbers
end

def partition3(numbers, l, r)
  x = numbers[l]
  j = l
  k = r

  i = l + 1
  while i <= k
    if numbers[i] < x
      j += 1
      t = numbers[i]
      numbers[i] = numbers[j]
      numbers[j] = t
      i += 1
    elsif numbers[i] > x
      t = numbers[i]
      numbers[i] = numbers[k]
      numbers[k] = t
      k -= 1
    else
      i += 1
    end
  end

  t1 = numbers[l]
  numbers[l] = numbers[j]
  numbers[j] = t1
  return [j, k]
end

def partition2(numbers, l, r)
  x = numbers[l]
  j = l
  ((l+1)..r).each do |i|
    if numbers[i] <= x
      j += 1
      t = numbers[i]
      numbers[i] = numbers[j]
      numbers[j] = t
    end
  end
  t = numbers[l]
  numbers[l] = numbers[j]
  numbers[j] = t

  return j
end

if __FILE__ == $0
  _ = gets
  numbers = gets.split(' ').map(&:to_i)

  puts "#{sort(numbers).join(' ')}"
end
