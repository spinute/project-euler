def n_digit(num)
	num.to_s.length
end

sum = 0
acc = 1
i = 1
check_points = [1, 10, 100, 1000, 10000, 100000, 1000000]
check_points.each do |e|
	while e > sum
		sum += n_digit(i)
		i += 1
	end

	acc *= (i-1).to_s.split('')[e-sum-1].to_i
end

p acc
