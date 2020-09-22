n,m=gets.split.map(&:to_i)
h,a,p={},0,0
m.times do
  i,s=gets.split
  i=i.to_i-1
  h[i]||=[0,false]
  if s=="WA"
    h[i][0]+=1 if !h[i][1]
  elsif s=="AC"
    if !h[i][1]
      a+=1
      p+=h[i][0]
    end
    h[i][1]=true
  end
end
puts [a,p].join ' '
