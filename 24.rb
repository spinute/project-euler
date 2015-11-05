def fact(n)
	n==0 ? 1 : n * fact(n-1)
end

ans = []
sum = 0
ith = 999999
candidates = (0..9).to_a

9.downto 0 do |i|
	n = 0
	while true
		if fact(i) * (n+1) > ith - sum
			sum += fact(i) * n
			ans << candidates[n]
			candidates.delete_at(n)
			break
		else
			n+=1
			p "too much ith" if n > 10
		end
	end
end

p ans.join
