# 手書き
ary = [1,2,4,8,16,32,64,128]
n = gets.to_i
ary.each_cons(2) {|a,b| puts a if (a...b).include?(n)}

# 再帰関数を用いた配列の生成
# def create_array(n,ary)
#   return ary[n] = 1 if n == 0
#   ary[n] = create_array(n-1,ary)*2
# end
# ary = []
# create_array(7,ary)
# n = gets.to_i
# ary.each_cons(2) {|a,b| puts a if (a...b).include?(n)}

# 2進数を用いた配列の生成
# num = "1"
# ary = [] << num.to_i(2)
# 7.times do
#   num << "0"
#   ary << num.to_i(2)
# end
# n = gets.to_i
# ary.each_cons(2) {|a,b| puts a if (a...b).include?(n)}
