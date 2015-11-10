def ht(a, b)
	Rational(a, b) == Rational(a%10, b/10) && a/10 == b%10
end
def th(a, b)
	b%10 != 0 && Rational(a, b) == Rational(a/10, b%10) && a%10 == b/10
end

ans = Rational(1)
10.upto 99 do |a|
	10.upto 99 do |b|
		if (th(a, b) || ht(a, b)) && (a%11!=0 || b%11!=0) && Rational(a, b) < Rational(1)
			ans *= Rational(a, b)
		end
	end
end

p ans
