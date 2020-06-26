S = gets.chomp
S =~ /\D/ ? (puts 'error') : (puts S.to_i * 2)
