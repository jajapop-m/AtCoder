n=gets.to_i
p=gets.chomp.split.map(&:to_i)
ans = []
pi=0
(0...n-1).each do |i|
  if p[i+1] == pi+1
    ans.push([*pi+1..i+3]).flatten
    pi = i + 2
  end
  unless p[i]<pi+1 || (p[i+1]<pi+1&&i+2<n&&p[i+2]!=pi+1)
    p([p,p[i],p[i+1],p[i+2]])
    p(-1)
    exit
  end
end
p ans
