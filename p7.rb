def till_ub(ub, expected)
	is_prime = Array.new(ub+1, true)

	count = 0
	is_prime.each_with_index do |e, i|
		if i == 0 || i == 1
			is_prime[i] = false
		else
			if e == true
				count += 1
				return i if count == expected
			end
			for j in 2..(ub+1/i)
				is_prime[j * i] = false
			end
		end
	end

	-1
end

def solve(expected)
	ub = 10001

	begin
		ans = till_ub(ub, expected)
		ub *= 2
	end while ans < 0

	ans
end
