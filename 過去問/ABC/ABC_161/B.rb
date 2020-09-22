n,m,*l=`dd`.split.map(&:to_f)
puts l.inject(0){|a,b|b<(l.sum./4*m) ? a : -~a}<m ?'No':'Yes'
