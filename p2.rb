i=1
j=2
k=0
sum=2

while k <= 40000000000
	k = i + j
	sum += k if k%2 == 0
	i = j
	j = k
end

puts sum
