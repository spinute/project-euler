p (1..100).inject(1){|a,e|a*e}.to_s.split('').inject(0){|a,e|a+e.to_i}
