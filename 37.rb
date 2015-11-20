def truncated(num)
	l = num.to_s.length
	base = 1
	ans = []

	(l-1).times do |i|
		base *= 10
		ans << num / base
		ans << num % base
	end

	ans
end

def primes(ub)
	plist = Array.new(ub+1, true)
	plist[0] = plist[1] = false
	2.upto ub do |i|
		if plist[i]
			(i*2).step(ub, i) do |j|
				plist[j] = false
			end
		end
	end
	plist
end

def solve()
	ub = 1000000
	i = 10
	sum = 0
	found = 0
	plist = primes(ub)

	while found != 11 && i < ub
		if plist[i]
			if truncated(i).inject(true){|a, e| a && plist[e]}
				found += 1
				sum += i
			end
		end

		i += 1
		p i if i%1000 == 0
	end

	if found < 11
		puts "only #{found} nums are found."
	else
		puts "ans: #{sum}"
	end
end

solve()
