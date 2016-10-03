# !/usr/bin/env ruby

def mark_segments(segments)
  segments = segments.sort_by!{ |segment| [segment[0], segment[1]] }

  index = 0

  session_start, session_end = segments.first
  coordinates = [session_end]

  segments.each do |segment|
    session_start, session_end = segment

    if session_start > coordinates[index]
      index += 1
      coordinates[index] = session_end
    else
      coordinates[index] = [coordinates[index], session_end].min
    end
  end

  coordinates
end

if __FILE__ == $0
  n = gets.to_i
  segments = []
  (1..n).each do
    segments.push(gets.split(' ').map(&:to_i))
  end
  result = mark_segments(segments)
  puts "#{result.size}"
  puts "#{result.join(' ')}"
end
