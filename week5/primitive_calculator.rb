# !usr/bin/env ruby

def steps(n)
  dynamic(n).sort
end

def dynamic(n)
  hop_count = Array.new(n+1, 0)
  hop_count[1] = 1
  (2..n+1).each do |i|
    indices = [i - 1]
    indices.push(i / 2) if i % 2 == 0
    indices.push(i / 3) if i % 3 == 0

    min_hops = indices.map{|idx| hop_count[idx]}.min
    hop_count[i] = min_hops + 1
  end

  sequence = [n]
  while sequence.last != 1
    ptr = sequence.last
    candidates = [ptr - 1]
    candidates.push(ptr / 2) if ptr % 2 == 0
    candidates.push(ptr / 3) if ptr % 3 == 0

    paths = candidates.map{|c| hop_count[c]}

    sequence.push(candidates[paths.index(paths.min)])
  end

  sequence
end

if __FILE__ == $0
  n = gets.to_i

  result = steps(n)
  puts "#{result.size - 1}"
  puts "#{result.join(' ')}"
end
