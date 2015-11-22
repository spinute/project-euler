# 8, 9 degits pandegitals are not prime (divided by 3)

def optimized_calc_prime_dict(ub)
	d = Array.new(ub+1, true)
	d[0] = d[1] = false

	# skip all the evens
	d[2] = true
	4.step(ub, 2) do |i|
		d[i] = false
	end

	3.step(ub, 2) do |i|
		(i*2).step(ub, i) do |j|
			d[j] = false
		end if d[i]
	end

	d
end

def calc_prime_dict(ub)
	d = Array.new(ub+1, true)
	d[0] = d[1] = false

	2.upto ub do |i|
		(i*2).step(ub, i) do |j|
			d[j] = false
		end if d[i]
	end

	d
end

dict = optimized_calc_prime_dict(7654321)

maximum = 0
(1..7).each do |n|
	(1..n).to_a.permutation do |e|
		cand = e.join.to_i
		maximum = cand if dict[cand] && maximum < cand
	end
end

p maximum
