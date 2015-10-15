def solve(ub)
	ar = (2..ub).to_i
	sum = 0

	ar.each_with_index do |e, i|
		if i == 0 || i == 1
			ar[i] = false
		elsif e == true
			sum += i
			for j in 2..(ub+1/i)
				ar[i*j] = false
			end
		end
	end

	sum
end
