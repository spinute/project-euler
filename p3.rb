def solve(input)
	res = input
	devisor = 2

	while devisor < res
		if res % devisor == 0
			res = res / devisor
		else
			devisor += 1
		end
	end

	puts res
end
