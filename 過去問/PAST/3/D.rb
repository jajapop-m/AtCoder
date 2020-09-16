digit = <<EOF
.###..#..###.###.#.#.###.###.###.###.###.
.#.#.##....#...#.#.#.#...#.....#.#.#.#.#.
.#.#..#..###.###.###.###.###...#.###.###.
.#.#..#..#.....#...#...#.#.#...#.#.#...#.
.###.###.###.###...#.###.###...#.###.###.
EOF
digit = digit.split("\n").map{|i| i.split("")}.transpose
n = gets.to_i
line = []
5.times {line << gets.chomp.split("").map(&:to_s)}
line = line.transpose
line.each_slice(4) do |l|
  digit.each_slice(4).with_index do |ll,i|
    break if l.length != 4 || ll.length != 4
    print i if l == ll
  end
end
puts ""

# n = gets.to_i
# line = []
# 5.times do
#   line << gets.chomp.split("").map(&:to_s)
# end
# line = line.transpose
# n.times do
#   line.shift
#   l = []
#   l << line.shift
#   l << line.shift
#   l << line.shift
#   sum = 0
#   l.each {|ll| sum += ll.join.count("#")}
#   case sum
#   when 12
#     if l[2][1] == "."
#       print "6"
#     elsif l[0][3] == "."
#       print "9"
#     else
#       print "0"
#     end
#   when 8
#     print "1"
#   when 11
#     if l[0][3] == "#"
#       print "2"
#     elsif l[2][1] == "#"
#       print "3"
#     else
#       print "5"
#     end
#   when 9
#     print "4"
#   when 7
#     print "7"
#   when 13
#     print "8"
#   end
# end
# puts ""
