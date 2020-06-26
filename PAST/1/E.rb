N, Q = gets.split.map &:to_i
follow = Hash.new
N.times do |i|
  follow[i+1] = Array.new
end


Q.times do |i|
  type, a, b = gets.split.map &:to_i
  case type
  when 1
    follow[a] << b
    follow[a].uniq!
  when 2
    follow.each do |f|
      follow[a] << f[0] if f[1].find{|i| i == a}
    end
    follow[a].uniq!
  when 3
    temp = []
    follow[a].each do |f|
      follow[f].each do |g|
        next if g == a # 自身をフォロー一覧に追加することを防ぐ
        temp << g
      end
    end
    follow[a] << temp
    follow[a].flatten!.uniq!
  end
end

follow.each do |i|
  result = "N" * N
  i[1].each do |j|
    result[j-1] = "Y"
  end
    puts result
end
