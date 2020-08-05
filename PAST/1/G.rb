N = gets.to_i
happiness = []
(N-1).times {happiness << gets.split.map(&:to_i)}
max = -Float::INFINITY

(0..(3**N)-1).each do |i|
  klass = Array.new(3){Array.new(0)}
  sum = 0
  combi = i.to_s(3).split("")
  ary = Array.new(N){"0"}.push(combi).flatten
  ary.shift(combi.length)

  ary.each_with_index do |k, idx|
    case k
    when "0"
      klass[0] << idx
    when "1"
      klass[1] << idx
    when "2"
      klass[2] << idx
    end
  end
  klass.each do |each_class|
    len = each_class.length
    for m in 0..len-1
      for n in m+1..len-1
        sum += happiness[each_class[m]][each_class[n]-1-each_class[m]]
      end
    end
  end
  max = [max,sum].max
end
puts max
