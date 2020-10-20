n,m=gets.split.map(&:to_i)
k=Array.new(n,0)
m.times do |i|
  ki,*s=gets.split.map(&:to_i)
  s.each{|si|k[si-1]= k[si-1] | 1 << i} # i番目のスイッチが繋がれた電球番号を2進数で保存
end
p=gets.split.reverse.join.to_i(2) # pを2進数表現
ans=0
(0...2**n).each do |c|
  ki=0
  (0...n).each do |i|
    ki=ki^k[i] if c & 1 << i != 0 # bit全探索でONにしたスイッチをXOR
  end
  ans+=1 if ki==p # 最終的な0と1かをpと比較する
end
p ans
