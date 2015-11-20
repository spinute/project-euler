def pandegital?(s)
	s.split('').sort.join == "123456789"
end

def cat(num, n)
	(1..n).inject(""){|a, e| a + (num*e).to_s}
end

maximum = 0
1.upto 10000 do |i|
	2.upto 9 do |n|
		cand = cat(i, n)
		if pandegital?(cand)
			maximum = [maximum, cand.to_i].max
		end
	end
end

p maximum
