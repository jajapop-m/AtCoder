# TLE !!

class Worker
  attr_accessor :id,:boss
  def initialize(id,boss)
    @id = id
    @boss = boss
  end
end

class WorkersList < Array
  def suprevisor?(one,another)
    return true  if self[one].boss == self[another].id
    return false if self[one].boss == -1
    self.suprevisor?(self[one].boss,another)
  end
end

N = gets.to_i
list = WorkersList.new
list << nil
N.times do |i|
  list << Worker.new(i+1,gets.to_i)
end
Q = gets.to_i
Q.times do
  a,b = gets.split.map(&:to_i)
  puts list.suprevisor?(a,b) ? "Yes" : "No"
end
