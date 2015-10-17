def prod(ar)
	ar.inject(1){|a, e| a*e}
end

def calc_max_row_seq(table, n)
	maximum = 0
	n.times do |i|
		row = table[i]
		acc = []
		n.times do |j|
			acc << row[j]
			acc.shift if j > 3
			maximum = [prod(acc), maximum].max
		end
	end
	maximum
end

def calc_max_diag_seq(table, n)
	maximum = 0
	n.times do |i|
		acc_from_lu = []
		acc_from_ld = []
		acc_from_ru = []
		acc_from_rd = []
		n.times do |j|
			break if i > n-1
			acc_from_lu << table[i][j]
			acc_from_ld << table[i][n-1-j]
			acc_from_ru << table[n-1-i][j]
			acc_from_rd << table[n-1-i][n-1-j]
			acc_from_lu.shift if j > 3
			acc_from_ld.shift if j > 3
			acc_from_ru.shift if j > 3
			acc_from_rd.shift if j > 3
			maximum = [prod(acc_from_lu), prod(acc_from_ld), prod(acc_from_ru), prod(acc_from_rd), maximum].max if j > 2
			i += 1
		end
	end
	maximum
end

def solve(n)
	table = Array.new(n) {|i| gets.split(' ').map!(&:to_i)}

	max_row_seq = calc_max_row_seq(table, n)
	max_col_seq = calc_max_row_seq(table.transpose, n)
	max_diag_seq = calc_max_diag_seq(table, n)
	[max_row_seq, max_col_seq, max_diag_seq].max
end
