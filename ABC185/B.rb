n,m,t=gets.split.map(&:to_i)
ab=m.times.map{gets.split.map(&:to_i)}
now = n
c = 0
ab.each do |a,b|
  p now
  now -= a-c
  if now <= 0
    puts 'No'
    exit
  end
  now+b-a<n ? now += b-a : now = n
  c = b
end
now -= t-c
puts now <= 0 ? 'No' : 'Yes'
