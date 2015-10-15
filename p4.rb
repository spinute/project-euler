def palindromic?(num)
	s = num.to_s
	s == s.reverse
end

def solve()
	ans = 0
	100.upto 999 do |i|
		100.upto 999 do |j|
			if palindromic? i*j
				ans = [ans, i*j].max
			end
		end
	end

	puts ans
end
