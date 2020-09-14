def bingo(ary)
  [ary,ary.transpose].each do |a|
    a.each do |a,b,c|
      return true if a && b && c
    end
  end
  if ary[1][1]
    return true if ary[0][0] && ary[2][2] || ary[0][2] && ary[2][0]
  end
  false
end

ary = []
3.times { ary << gets.split.map(&:to_i) }
result = Array.new(3){[false]*3}
gets.to_i.times do
  n = gets.to_i
  ary.each_with_index do |l,i|
    l.each_with_index do |m,j|
      result[i][j] = true if m == n
    end
  end
end
puts bingo(result) ? "Yes" : "No"
