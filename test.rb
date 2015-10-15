max=2_000_000
a="1"*max
a[0],a[1] = "0","0"
sum = (2...max).inject(0) do |r,n|
	if a[n] == 0
		r
	else
		((n*2)...max).step(n) {|i| a[i] = 0 }
		r+n
	end
end
