def sum_of_square(n)
	n * (n + 1) * (2 * n + 1) / 6
end

def square_of_sum(n)
	((1 + n) * n / 2) ** 2
end

def solve(n)
	square_of_sum(n) - sum_of_square(n)
end
