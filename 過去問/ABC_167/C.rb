n,m,x=gets.split.map(&:to_i)
a=n.times.map{gets.split.map(&:to_i)}
ans = Float::INFINITY
(1...2**n).each do |i|
  list=[]
  i.to_s(2).rjust(n,"0").each_char.with_index do |s,i|
    list << a[i] if s==?1
  end
  list=list.transpose
  money=list.shift.sum
  flag=true
  list.each {|l|flag = false if l.sum < x}
  ans = [ans,money].min if flag
end
p ans==Float::INFINITY ? -1 : ans
