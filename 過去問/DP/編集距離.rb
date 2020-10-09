# 編集距離を求める動的計画法
# 問：２つの文字列S,Tが与えられる。
# Sに以下の３通りの操作を繰り返し施すことで、Tに変換したいものとする。
# そのような一連の操作のうち操作回数の最小値を求めよ。
# この最小値をSとTの編集距離と呼ぶ。
# ・変更：S中の文字を一つ選んで任意の文字に変更する。
# ・削除：S中の中の文字を一つ選んで削除する。
# ・挿入：Sの好きな箇所に好きな文字を一文字挿入する。

# 入力例　bag big
# 出力例　1
#
# 入力例　kodansha danshari
# 出力例 4
#
# 入力例　logistic algorithm
# 出力例　6

s,t=gets.chomp.split
# dp[i][j] <= Sの最初のi文字分とTの最初のj文字分との間の編集距離
dp=Array.new(s.size+1){[Float::INFINITY]*(t.size+1)}
dp[0][0]=0
(0..s.size).each do |i|
  (0..t.size).each do |j|
    # 変更操作
    # sもtも一文字進める
    if i>0&&j>0
      # s[i]とt[j]が等しい場合、コストを増やさずに進めるだけで済む
      if s[i]==t[j]
        dp[i][j] = [dp[i][j], dp[i-1][j-1]].min
      # 異なる場合、コストを１増やして(sの文字を変更して)進める
      else
        dp[i][j] = [dp[i][j], dp[i-1][j-1]+1].min
      end
    end
    # 削除操作
    # sのi文字目を削除する
    dp[i][j] = [dp[i][j], dp[i-1][j]+1].min if i>0
    # 挿入操作
    # sのi文字目に一文字挿入する(=tのj文字目を削除する)
    dp[i][j] = [dp[i][j], dp[i][j-1]+1].min if j>0
  end
  dp.each {|l| puts l.join ' '}
end
# dp.each {|l| puts l.join ' '}
p dp[s.size][t.size]
