def solve(base, pow)
	(base**pow).to_s.split('').map(&:to_i).inject(0){|a, e| a+e}
end

p solve(2, 1000)
