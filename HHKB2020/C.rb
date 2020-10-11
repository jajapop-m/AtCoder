n=gets.to_i
p=gets.split.map(&:to_i)
list=Array.new(n)
min=0
p.each do |n|
  list[n]=true
  if list[min]
    while list[n]
      n+=1
    end
    min=n
  end
  p min
end
