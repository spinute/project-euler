def sum_of_devisors(n)
	sum = 0
	ub = Math.sqrt(n).to_i
	1.upto ub do |i|
		sum += i + n/i if n%i == 0
	end

	sum -= ub if n == ub*ub

	sum - n
end

def abundant?(n)
	n < sum_of_devisors(n)
end

l = []
upper_limit = 28123
2.upto upper_limit do |i|
	l << i if abundant? i
end

p l.length

s = Array.new(upper_limit+1, true)

l.each_with_index do |e, i|
	i.upto l.length-1 do |f|
		s[e+l[f]]=false if e + f <= 28123
	end
end

sum = 0
s.each_with_index do |e, i|
	sum += i if e
	p i if e
end
p sum
