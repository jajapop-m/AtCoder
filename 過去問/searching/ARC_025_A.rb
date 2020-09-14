puts gets.split.map(&:to_i).zip(gets.split.map(&:to_i)).inject(0) { |a,b|
     a + (b[0] > b[1] ? b[0] : b[1])}
