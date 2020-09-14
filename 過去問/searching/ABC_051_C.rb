sx,sy,tx,ty = gets.split.map(&:to_i)
path1 = "U"*(ty - sy) + "R"*(tx - sx)
path2 = "D"*(ty - sy) + "L"*(tx - sx)
path3 = "L" + "U"*(ty - sy + 1) + "R"*(tx - sx + 1) + "D"
path4 = "R" + "D"*(ty - sy + 1) + "L"*(tx - sx + 1) + "U"
puts path1+path2+path3+path4
