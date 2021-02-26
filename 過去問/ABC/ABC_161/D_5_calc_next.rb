# 再帰関数を使わずに全列挙(BFS)
K = gets.to_i
# d桁のルンルン数が全列挙された配列を受け取り、
# d+1桁のルンルン数が全列挙された配列をreturnする関数(calc_next)
def calc_next(ary)
  res=[]
  ary.each do |val|          # 配列の要素全てに対して、
    (-1..1).each do |i|      # 次の桁を計算し、
      add = (val % 10) + i   # それが0..9の間なら、1桁目に挿入してresに入れる
      res << val*10 + add if add >= 0 && add <= 9
    end
  end
  res
end

all = cur= [*1..9] # 1桁目の全列挙,cur=現在計算中の桁の全列挙,all=全ての値が入る配列
9.times do         # 9回calc_nextを実行すれば10桁まで求まる
  cur = calc_next(cur)
  all.concat(cur)
end
puts all[K-1]
