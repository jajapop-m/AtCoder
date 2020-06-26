def f(n)
  return "" if n == 0
  n -= 1
  f(n/26) + [*"a".."z"][n%26]
end
puts f(gets.to_i)
