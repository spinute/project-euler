list = []
2.upto 100 do |a|
	2.upto 100 do |b|
		list << a**b
	end
end

p list.uniq.length
