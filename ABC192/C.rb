class Integer
  def g1
    self.to_s.split('').map(&:to_i).sort.reverse.join.to_i
  end
  def g2
    self.to_s.split('').map(&:to_i).sort.join.to_i
  end
  def f
    self.g1 - self.g2
  end
end
n,k=gets.split.map(&:to_i)
a=[]
k.times{n=n.f}
p n
