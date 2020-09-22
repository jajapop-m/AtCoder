a,b,h,m=gets.split.map(&:to_f)
hh = (h/12+(m/60)/12)*2*Math::PI
mm = (m/60)*2*Math::PI
p Math.sqrt a**2 + b**2 - 2*a*b*Math.cos((hh-mm).abs)
