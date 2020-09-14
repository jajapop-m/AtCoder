time = []
min = 0
5.times do
  x = gets.to_i
  if x.ceil(-1) - x > min.ceil(-1) - min
    time << min
    min = x
  else
    time << x
  end
end
puts time.inject(min){|a,b| a+b.ceil(-1) }
