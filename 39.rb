require 'rational'
require 'pp'

def valid?(num)
	num.denominator == 1 && num.to_i != 0
end

maximum = 0
max_p = -1

1.upto 1000 do |p|
	count = 0
	1.upto p/2 do |a|
		b = Rational(p*(p-2*a), 2*(p-a))
		c = Rational(p**2-2*p*a+2*a**2, 2*(p-a))
		if valid?(b) && valid?(c) && a < b.to_i
			pp [a, b.to_i, c.to_i, "#{a**2 + b.to_i**2} == #{c.to_i**2}", a**2 + b.to_i**2 == c.to_i**2]
			count += 1
		end
	end

	if maximum < count
		maximum = count
		max_p = p
	end
end

p max_p
