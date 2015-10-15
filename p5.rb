def gcd(n, m)
	big = [n, m].max
	small = [n, m].min

	while small != 0
		tmp = big % small
		big = small
		small = tmp
	end

	big
end

def gcm(n, m)
	n * m / gcd(n, m)
end

def solve(from, to)
	(from..to).inject{|acc, i| gcm(acc, i)}
end
