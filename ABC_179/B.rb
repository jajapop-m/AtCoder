n=gets.to_i
count = 0
ans =[]
n.times do
  a,b=gets.split.map(&:to_i)
	a==b ? ans << true : ans << false
end
ans.each_cons(3) do |i,j,k|
  if i&&j&&k
    puts "Yes"
    exit
  end
end
puts "No"
