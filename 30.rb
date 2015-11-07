ans = 0
ub = 9**5 * 6
2.upto ub do |i|
	sum = i.to_s.split('').inject(0){|a,e| a+e.to_i**5}
	ans += sum if sum == i
end
puts ans
