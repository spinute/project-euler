require 'set'

def valid?(a, b, c)
	s = a.to_s + b.to_s + c.to_s
	s.length == s.split("").uniq.length && s.length == 9 && !s.include?('0')
end

ans = Set.new
1000.upto 9999 do |a|
	1.upto 9 do |b|
		c = a*b
		ans << c if valid?(a, b, c)
	end
end
100.upto 999 do |a|
	10.upto 99 do |b|
		c = a*b
		ans << c if valid?(a, b, c)
	end
end

p ans.inject(0){|a,e| a+e}
