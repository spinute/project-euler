def solve()
	sum = 0
	while input = gets
		sum += input.to_i
	end

	sum / (10 ** (sum.to_s.length - 10))
end

p solve
