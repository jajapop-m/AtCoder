a,b,c,d=gets.split.map &:to_i
puts b<c || d<a ? 'No' : 'Yes'

# a,b,c,d=gets.split.map(&:to_i)
# puts a<=c&&c<=b || a<=d&&d<=b || c<=a&&b<=d || a<=c&&d<=b ? 'Yes' : 'No'
