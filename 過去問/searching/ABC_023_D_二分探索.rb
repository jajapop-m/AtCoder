n=gets.to_i
h,s=[],[]
n.times{|i|h[i],s[i] = gets.split.map(&:to_i)}
INF=2**60
left,right=0,INF
while right - left > 1
  mid = (left + right) / 2
  ok = true
  # 風船iを、mid点で割るための制限時間t[i]
  t = Array.new(n,0)
  (0...n).each do |i|
    ok = false if mid < h[i] # midよりもhが高ければfalse
    t[i] = (mid - h[i]) / s[i]
  end
  # 制限時間が短い順にソート
  t.sort!
  # 制限時間t[i]と経過時間iを比較
  (0...n).each{|i|ok = false if t[i] < i}
  ok ? (right = mid) : (left = mid)
end
p right
