n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
k = [k,n-1].min
# 11行目で繰り返し最小値を比較するために一旦無限大で初期化
dp = Array.new(n){Float::INFINITY}
dp[0] = 0
# 飛び移れる最遠のところまでの初期値を入力
(1..k).each {|i| dp[i] = (h[i] - h[0]).abs}
# dp[i-j] <= j個手前までの最小コスト + そこから飛び移るときのコスト
(k+1...n).each do |i|
  (1..k).each {|j| dp[i] = [dp[i-j] + (h[i] - h[i-j]).abs, dp[i]].min}
end
p dp[n-1]
