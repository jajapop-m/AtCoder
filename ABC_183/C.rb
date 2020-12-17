n,k = gets.split.map(&:to_i)
t=n.times.map{gets.split.map(&:to_i)}
ans=0
[*2..n].permutation(n-1).to_a.each do |p|
  c=0
  p.push(1).unshift(1)
  p.each_cons(2) do |a,b|

    c+=t[a-1][b-1]
  end
  ans+=1 if c == k
end
p ans
