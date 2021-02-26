n,x=gets.split.map(&:to_i)
vp=n.times.map{gets.split.map(&:to_r)}
s=0
vp.each_with_index do |vpi,i|
  v,p=vpi
  s+=v*p/100
  if s>x
    puts i+1
    exit
  end
end
puts -1
