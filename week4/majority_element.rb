# !usr/bin/env ruby

def has_majority(sequence)
  find_majority(sequence) != -1 ? 1 : 0
end

def find_majority(sequence)
  return sequence.first if sequence.size == 1

  half = sequence.size / 2

  left_candidate = find_majority(sequence.first(half))
  right_candidate = find_majority(sequence.drop(half))

  return left_candidate if left_candidate == right_candidate

  left_count = 0
  right_count = 0

  sequence.each do |number|
    left_count += 1 if number == left_candidate
    right_count += 1 if number == right_candidate
  end

  return left_candidate if left_count > half
  return right_candidate if right_count > half

  return -1
end

if __FILE__ == $0
  _ = gets
  numbers = gets.split(' ').map(&:to_i)

  puts "#{has_majority(numbers)}"
end
