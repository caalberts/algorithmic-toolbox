# !usr/bin/env ruby

def count_points_coverage(segments, points)
  marked_segments = segments.reduce([]){ |acc, segment| acc.concat([[segment[0], 'l'], [segment[1], 'r']]) }
  marked_points = points.map{ |p| [p, 'p']}

  mapped_points = marked_segments.concat(marked_points).sort_by{|pair| [pair[0], pair[1]]}

  container = 0
  counts = {}

  mapped_points.each do |point|
    container += 1 if point[1] == 'l'
    container -= 1 if point[1] == 'r'
    counts[point[0].to_s] = container if point[1] == 'p'
  end

  points.map{|p| counts[p.to_s]}
end

if __FILE__ == $0
  s, _ = gets.split(' ').map(&:to_i)

  segments =[]
  (1..s).each do |segment|
    segments.push(gets.split(' ').map(&:to_i))
  end
  points = gets.split(' ').map(&:to_i)

  puts "#{count_points_coverage(segments, points).join(' ')}"
end
