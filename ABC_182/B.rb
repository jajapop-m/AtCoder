n=gets.to_i
a=gets.split.map &:to_i
max=a.max
c_max=0
ans=0
(2..max).each do |i|
  count=0
  a.each do |ai|
    count+=1 if ai%i==0
  end
  if c_max<count
    c_max=count
    ans=i
  end
end
p ans
