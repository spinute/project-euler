def factorial(n)
	(2..n).inject(1){|a, e| a*e}
end

def solve(col, row)
	sum = col + row
	factorial(sum) / factorial(col) / factorial(row)
end

p solve(20, 20)
