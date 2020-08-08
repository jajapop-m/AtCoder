n,m = gets.split.map(&:to_i)

def change_to_bit(s)
  s.gsub!("Y","1")
  s.gsub!("N","0")
  s.to_i(2)
end

dp = [-1] * 1025
dp[0] = 0
m.times do
	s, c = gets.split(' ')
	s = change_to_bit(s)
	c = c.to_i
	1024.downto(0) do |i|
		next if dp[i] == -1
		dp[i | s] = dp[i] + c if dp[i | s] == -1 or dp[i | s] > dp[i] + c
	end
end

p dp[("1"*n).to_i(2)]
