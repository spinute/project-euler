def solve(n_rows)
	prob = Array.new(n_rows){|i| gets.split(' ').map(&:to_i)}
	prob.reverse!

	memo = Array.new(n_rows) do |i|
		Array.new(n_rows - i) do |j|
			if i == 0
				prob[i][j]
			else
				0
			end
		end
	end

	1.upto(memo.length - 1) do |i|
		(n_rows - i).times do |j|
			memo[i][j] = [memo[i-1][j], memo[i-1][j+1]].max + prob[i][j]
		end
	end

	memo[-1][0]
end

p solve(100)
