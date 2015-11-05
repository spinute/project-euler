bound = 10 ** 999

prev = 1
now = 1
nex = 2
i = 3
while bound > nex
	i += 1
	prev = now
	now = nex
	nex = prev + now
end

p i
