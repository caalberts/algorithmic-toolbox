# !usr/bin/env ruby

def count_inversions(sequence)
  merge_sort(sequence)[:inversions]
end

def merge_sort(sequence)
  return {merged_sequence: sequence, inversions: 0} if sequence.size == 1

  half = sequence.size / 2

  left = merge_sort(sequence.first(half))
  right = merge_sort(sequence.drop(half))

  merge(left, right)
end

def merge(left, right)
  a = left[:merged_sequence]
  b = right[:merged_sequence]

  result = {
    merged_sequence: [],
    inversions: left[:inversions] + right[:inversions]
  }
  while a.any? && b.any?
    if a.first <= b.first
      result[:merged_sequence].push(a.shift)
    else
      result[:merged_sequence].push(b.shift)
      result[:inversions] += a.size
    end
  end
  result[:merged_sequence] = result[:merged_sequence].concat(a).concat(b)

  result
end

if __FILE__ == $0
  _ = gets
  numbers = gets.split(' ').map(&:to_i)

  puts "#{count_inversions(numbers)}"
end
