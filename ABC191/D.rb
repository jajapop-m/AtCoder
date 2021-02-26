x,y,r=gets.split.map{|i|(i.to_f*1000).to_i}
ans=0
((x-r)/1000+1..(x+r)/1000).each do |xi|
  yi = Math.sqrt((r*r-(x-xi)*(x-xi)))
  ans+=((yi+y)-(y-yi))/1000
end
p ans
