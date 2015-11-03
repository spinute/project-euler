require 'date'

count = 0
for y in 1901..2000
	for m in 1..12
		count += 1 if Date.new(y, m, 1).sunday?
	end
end

p count
