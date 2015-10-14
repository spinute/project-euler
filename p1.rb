def seq_sum(head, num, diff)
	(head + head + (num - 1) * diff) * num / 2
end

def solve(ub)
	max = ub - 1
	n_3m = max / 3
	n_5m = max / 5
	n_15m = max / 15

	seq_sum(3, n_3m, 3) + seq_sum(5, n_5m, 5) - seq_sum(15, n_15m, 15)
end

p "solve(10) is #{solve 10}"
p "solve(1000) is #{solve 1000}"
