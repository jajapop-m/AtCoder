h, w, k = gets.split.map &:to_i
c = []
h.times do
 c << gets.split("").map(&:to_s)
end

ans = 0
for h_ in 0..2**h-1
  for w_ in 0..2**w-1
    count = 0
    for i in 0..h-1
      for j in 0..w-1
        if (h_ >> i & 1 == 0) && (w_ >> j & 1 == 0) &&  (c[i][j] == "#")
          count += 1
        end
      end
    end
    ans += 1 if count == k
  end
end

puts ans
