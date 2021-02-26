n=gets.to_i
require 'prime'

class Integer
  def divisor_list
    return [1] if self == 1
    Prime.prime_division(self).map do |e|
      Array.new(e[1]+1).map.with_index do |element, i|
        e[0]**i
      end
    end.inject{|p,q| p.product(q)}.map do |a|
      [a].flatten.inject(&:*)
    end.delete_if do |n|
      n%2==0
    end
  end
end

p (n*2).divisor_list.size*2
