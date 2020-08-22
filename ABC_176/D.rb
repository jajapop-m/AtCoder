# h,w = gets.split.map(&:to_i)
# ch,cw = gets.split.map(&:to_i)
# dh,dw = gets.split.map(&:to_i)
# s = []
# h.times{ s << gets.split.map(&:to_i) }
# $count = 0
#
# def check_next(s,ch,cw,dh,dw)
#   return $count if [ch,cw] = [dh,dw]
#   if s[ch-1][cw] == "#"
#     check_warp(s,ch,cw,dh,dw)
#   else
#     check_next(s,ch-1,cw,dh,dw)
#   end
#
#   if s[ch][cw-1] == "#"
#     check_warp(s,ch,cw,dh,dw)
#   else
#     check_next(s,ch,cw-1,dh,dw)
#   end
#
#   if s[ch+1][cw] == "#"
#     check_warp(s,ch,cw,dh,dw)
#   else
#     check_next(s,ch+1,cw,dh,dw)
#   end
#
#   if s[ch][cw+1] == "#"
#     check_warp(s,ch,cw,dh,dw)
#   else
#     check_next(s,ch,cw+1,dh,dw)
#   end
# end
#
# def check_warp(s,ch,cw,dh,dw)
#   check_next(s,ch-2,cw,dh,dw) if s[ch-2][cw] == "."
#   check_next(s,ch-2,cw-1,dh,dw) if s[ch-2][cw] == "."
#   check_next(s,ch-2,cw-2,dh,dw) if s[ch-2][cw] == "."
#   check_next(s,ch-2,cw+1,dh,dw) if s[ch-2][cw] == "."
#   check_next(s,ch-2,cw+2,dh,dw) if s[ch-2][cw] == "."
# end
