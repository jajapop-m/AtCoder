n=gets.to_i
s1=gets.split.map(&:to_i)
s2=gets.split.map(&:to_i)
a,b=0,0
[*1..n].permutation.with_index do |p,i|
  a=i if p==s1
  b=i if p==s2
end
p (b-a).abs
