def solve(from, to)
	(from..to).inject{|acc, i| acc.lcm i}
end
