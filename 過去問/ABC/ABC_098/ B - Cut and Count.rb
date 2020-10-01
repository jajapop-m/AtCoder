n=gets.to_i
s=gets.chomp.split('')
ans = 0
(0...n-1).each do |i|
  a = 0
  [*?a..?z].each do |l|
    a+=1 if s[0..i].include?(l) && s[i+1...n].include?(l)
  end
  ans=[ans,a].max
end
p ans
