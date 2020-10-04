n,s=gets.split
n=n.to_i
s=s.chomp.split('')
c=Array.new(n+1){[0]*4}
(0..n).each do |i|
  case s[i]
  when ?A
    c[i+1][0]+=1
  when ?T
    c[i+1][1]+=1
  when ?C
    c[i+1][2]+=1
  when ?G
    c[i+1][3]+=1
  end
end
(1..n).each do |i|
  c[i][0]+=c[i-1][0]
  c[i][1]+=c[i-1][1]
  c[i][2]+=c[i-1][2]
  c[i][3]+=c[i-1][3]
end
ans=0
(0..n).each do |i|
  (1..n/2+1).each do |k|
    j = i+k*2
    next if i-1==j||j>n
    ai=c[j][0]-c[i][0]
    bi=c[j][1]-c[i][1]
    ci=c[j][2]-c[i][2]
    di=c[j][3]-c[i][3]
    ans+=1 if ai==bi&&ci==di
  end
end
p ans
