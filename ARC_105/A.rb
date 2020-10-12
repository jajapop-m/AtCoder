a=gets.split.map(&:to_i)
sum=a.sum
flag = false
(0...2**4).each do |i|
  s=0
  (0...4).each do |j|
    if i & 1 << j == 0
      s+=a[j]
    end
  end
  if s==sum/2.to_f
    flag=true
  end
end
puts flag ? :Yes : :No
