n=gets.to_i
s=n.times.map{gets.chomp}
ans=0
(0...2**(n+1)).each do |i|
  a=i.to_s(2).rjust(n+1,'0')
  f=a[0].to_i
  (1..n).each do |j|
    case s[j-1]
    when 'AND'
      f=f&a[j].to_i
    else
      f=f|a[j].to_i
    end
  end
  ans+=1 if f==1
end
puts ans
