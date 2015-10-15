def solve()
	1.upto 500 do |a|
		(a+1).upto 500 do |b|
			c = 1000 - a - b
			return a*b*c if a**2 + b**2 == c**2
		end
	end
end
