def calc_primes(ub)
	list = Array.new(ub+1){true}
	list[0] = list[1] = false

	2.upto ub do |i|
		if list[i]
			(i*2).step(ub, i) do |j|
				list[j] = false
			end
		end
	end

	list
end

def n_digit(e)
	e.to_s.length
end

def check(list)
	ans = []
	list.each_with_index do |e, i|
		if e
			candidate = Array.new(n_digit(i)){|j| i.to_s.split('').rotate(j).join.to_i}
			if candidate.inject(true){|a, j| a && list[j]}
				ans << i
			end
		end
	end
	ans
end

list = calc_primes(1000000)
ans = check(list)
p ans.length
