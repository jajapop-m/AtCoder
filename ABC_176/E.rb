# TLE !!

h,w,m = gets.split.map(&:to_i)
line_count = Array.new(w){0}
row_count = Array.new(h){0}
counts = Array.new(h){[0]*w}

m.times do
  hi,wi = gets.split.map(&:to_i)
  row_count[hi-1] += 1
  line_count[wi-1] += 1
  counts[hi-1][wi-1] -= 1
end

max = 0
row_count.each_with_index do |r,i|
  max_l = 0
  line_count.each_with_index do |l,j|
    counts[i][j] += r + l
    max_l = [max_l,counts[i][j]].max
  end
  max = [max,max_l].max
end
puts max
