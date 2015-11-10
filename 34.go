package main

var memo [10]int

func factorial(n int) int {
	if n == 0 {
		return 1
	} else {
		return n * factorial(n-1)
	}
}

func check(n int) bool {
	sum := 0
	target := n
	for target > 0 {
		sum += memo[target%10]
		target /= 10
	}
	return sum == n
}

func main() {
	for i := 0; i < 10; i++ {
		memo[i] = factorial(i)
	}

	ans := 0
	for i := 3; i < 10000000; i++ {
		if check(i) {
			println(i)
			ans += i
		}
	}

	println(ans)
}
