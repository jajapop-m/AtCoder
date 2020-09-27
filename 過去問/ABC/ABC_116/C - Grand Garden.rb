n=gets.to_i
h=gets.split.map(&:to_i)
ans=0
i=0
loop do
  break if i==n
  next i+=1 if h[i]==0
  min=h[i]
  (i+1...n).each do |j|
    break if h[j]==0
    min=h[j] if min>h[j]
  end
  (i...n).each do |j|
    break if h[j]==0
    h[j]-=min
  end
  ans +=min
end

p ans
