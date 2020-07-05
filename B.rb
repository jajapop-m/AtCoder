D = gets.to_i
c = gets.split.map &:to_i
s = Array.new
D.times do
  s << gets.split.map(&:to_i)
end
# t = []
# D.times do
#   t << gets.to_i
# end
#
# last = Array.new(26){[0, false]}
#
#
#
# def cal_dec(c, last, day)
#   sum = 0
#   for i in 0..25
#     sum += c[i] * (day - last[i][0])
#   end
#   sum
# end
#
#
#
# point = 0
# for day in 1..D
#   point += s[day-1][t[day-1]-1]
#   last[t[day-1]-1][1] = true
#   last[t[day-1]-1][0] = day
#   point -= cal_dec(c, last, day)
#   puts point
# end


D.times do |i|
    max = s[i].max
  a = s[i].index(max) + 1
  b =  (i+2) % 26 + 1
  puts [a,b].sample
end
