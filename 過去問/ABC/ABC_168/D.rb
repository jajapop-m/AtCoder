n,m=gets.split.map(&:to_i)
to=Array.new(n+1){[]}
m.times do
  a,b=gets.split.map(&:to_i)
  to[a] << b
  to[b] << a
end
ans=[nil,1]
queue=[]
to[1].each do |i|
  queue << i
  ans[i]=1
end

while !queue.empty?
  s=queue.shift
  to[s].each do |t|
    unless ans[t]
      queue << t
      ans[t] = s
    end
  end
end

if ans[2..n+1].any? nil
  puts 'No'
else
  puts 'Yes'
  puts  ans[2..n+1]
end
