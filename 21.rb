def sum_of_proper_devisors(n)
	sum = 0
	ub = Math.sqrt(n).to_i
	1.upto ub do |i|
		sum += i + n/i if n%i == 0
	end

	sum -= ub if n == ub*ub

	sum - n
end

def have_amicable?(n)
	candidate = sum_of_proper_devisors(n)
	candidate <= 10000 && candidate != n && n == sum_of_proper_devisors(candidate)
end

ans = 0
2.upto 10000 do |i|
	ans += i if have_amicable?(i)
	p i if have_amicable?(i)
end
p ans

p sum_of_proper_devisors(220)
