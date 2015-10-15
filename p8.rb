def solve(len)
	ar = gets.split('').map!(&:to_i)

	prod = 0
	ans = 0
	n = 0
	ar.each_with_index do |e, i|
		if e == 0
			n = 0
			prod = 1 #reset, consistent as long as not all the values in sequences are 0
		elsif n < len
			n += 1
			prod *= e
		else
			prod = prod * e / ar[i - len]
		end

		ans = [prod, ans].max
	end

	ans
end
