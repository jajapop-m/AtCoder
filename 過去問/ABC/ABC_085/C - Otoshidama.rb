n,y=gets.split.map(&:to_i)
a,b,c=-1,-1,-1
(0..n).each do |i|
  (0..n).each do |j|
    next if n-i-j<0
    a,b,c=n-i-j,j,i if i*1000+j*5000+(n-i-j)*10000==y
  end
end
puts [a,b,c].join ' '
