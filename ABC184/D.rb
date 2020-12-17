a,b,c=gets.split.map(&:to_i)
dp=Array.new(101){Array.new(101){[0]*101}}
(0...100).reverse_each do |i|
  (0...100).reverse_each do |j|
    (0...100).reverse_each do |k|
      next if i+j+k==0
      now=0
      now+=(dp[i+1][j][k]+1)*i/(i+j+k).to_f
      now+=(dp[i][j+1][k]+1)*j/(i+j+k).to_f
      now+=(dp[i][j][k+1]+1)*k/(i+j+k).to_f
      dp[i][j][k]=now
    end
  end
end
p dp[a][b][c]
