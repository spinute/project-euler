$pay = 200
$coin = [1, 2, 5, 10, 20, 50, 100, 200]

def calc_sum(ar)
	if ar.length != $coin.length
		p 'invalid argment'
	end

	ar.zip($coin).inject(0){|a,e| a+e[0]*e[1]}
end

$ans = 0
def search(ar, depth)
	if depth > $coin.length - 1
		# appropriate num of 1 is already decided
		$ans += 1
	else
		0.upto ($pay - calc_sum(ar)) / $coin[-depth] do |i|
			new_ar = Array.new(ar.length){|j| ar[j]}
			new_ar[-depth] = i
			search(new_ar, depth+1)
		end
	end
end

ar = Array.new($coin.length, 0)
search(ar, 1)

p $ans
