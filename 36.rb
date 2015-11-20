def palindrome?(num)
	num == num.reverse
end

def check(num)
	palindrome?(num.to_s) && palindrome?(num.to_s(2))
end

p (1..1000000).inject(0){|a,e| a+(check(e) ? e : 0)}
