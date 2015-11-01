require 'pp'

def next_collatz(n)
	n%2 == 0 ?
		n/2 :
		3*n + 1
end

def calc_collatz_with_full_cache(n, h)
	if n == 1
		1
	elsif h[n].nil?
		ans = calc_collatz_with_full_cache(next_collatz(n), h) + 1
		h[n] = ans
		ans
	else
		h[n]
	end
end

def calc_collatz_with_saving_cache(n, h, ub)
	if n == 1
		1
	elsif h[n].nil?
		ans = calc_collatz_with_saving_cache(next_collatz(n), h, ub) + 1
		h[n] = ans if n < ub
		ans
	else
		h[n]
	end

end

def calc_collatz_with_partial_cache(n, h)
	if n == 1
		1
	elsif h[n].nil?
		calc_collatz_with_partial_cache(next_collatz(n), h) + 1
	else
		h[n]
	end
end

def solve(ub)
	h = Hash.new

	maximum = 0
	ans = 0

	2.upto ub-1 do |t|
		#len = calc_collatz_with_partial_cache(t, h)
		#h[t] = len

		#len = calc_collatz_with_saving_cache(t, h, ub)
		len = calc_collatz_with_full_cache(t, h)

		ans = t if len > maximum
		maximum = [maximum, len].max
	end

	ans
end

p solve(1000000)
