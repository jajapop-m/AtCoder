n = gets.to_i
# dp[i][j] <= i日目に[A,B,C]の活動をしたときの幸福度の最大値
dp = Array.new(n){[0,0,0]}
dp[0] = gets.split.map(&:to_i)
(1..n-1).each do |i|
  gets.split.map(&:to_i).each_with_index do |abc,j|
    dp[i-1].each_with_index do |abc2,k|
      # 異なる活動のときだけ、幸福度を加えたときの最大値を更新する
      next if j == k
      dp[i][j] = [abc + abc2, dp[i][j]].max
    end
  end
end
p dp[n-1].max
