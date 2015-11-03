def calc_score(name, pos)
	head, last = "AZ".codepoints
	name_score = name.codepoints.inject(0){|a,e| (head..last).include?(e) ? a+e-head+1 : a}

	name_score * pos
end

name = gets.split(',').sort
sum = 0
name.each_with_index do |e, i|
	sum += calc_score(e, i+1)
end
p sum
