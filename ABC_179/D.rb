N,k=gets.split.map(&:to_i)
lr = []
k.times do
  l,r=gets.split.map(&:to_i)
  (l..r).each{|i| lr << i}
end
p lr
dp = Array.new(lr.length){[0]*(N+1)}

lr.each_with_index do |i,idx|
  if idx==0
    (1..N).each do |n|
      break if i*n > N
      dp[idx][i*n] += 1
    end
    next
  end

  (1..N).each do |n|
    dp[idx][n] = dp[idx-1][n]
    next if n < i
    dp[idx][n] += dp[idx-1][n-i] if dp[idx-1][n-i] != 0

  end
end
p dp
