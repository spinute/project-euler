def quad(a, b, n)
	n**2 + a * n + b
end

def calc_consecutive_primes(a, b, is_prime)
	n = 0
	while is_prime[quad(a, b, n)]
		n+=1
	end
	n
end

def calc_primes(ub)
	is_prime = Array.new(ub+1) {|i| i%2!=0}
	is_prime[1] = false
	is_prime[2] = true

	3.step(ub, 2) do |i|
		if is_prime[i]
			(i*2).step(ub, i) do |j|
				is_prime[j] = false
			end
		end
	end

	is_prime
end

# assume max length of consecutive seq is less than 80
# 80**2 + 1000 * 80 + 1000 < 100000
# if not so, fix
ub = 100000

is_prime = calc_primes(ub)

maximum = 0
max_a = max_b = 0
-999.upto 999 do |a|
	-999.upto 999 do |b|
		n_consectuive_primes = calc_consecutive_primes(a, b, is_prime)
		if maximum < n_consectuive_primes
			maximum = n_consectuive_primes
			max_a = a
			max_b = b
		end
	end
end

p max_a*max_b
