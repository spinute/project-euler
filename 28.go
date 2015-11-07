package main

import ()

func CalcSeqSum(head, df, dfdf, num int) int {
	sum := head
	term := head

	for i := 0; i < num-1; i++ {
		term += df
		sum += term
		df += dfdf
	}

	return sum
}

func testCalcSeqSum() {
	result := CalcSeqSum(1, 0, 0, 1)
	if result != 1 {
		println("sum of [1] should be 1")
	}

	result = CalcSeqSum(1, 2, 1, 2)
	if result != 4 {
		println("sum of [1, 3] should be 4")
	}

	result = CalcSeqSum(1, 2, 1, 3)
	if result != 10 {
		println("sum of [1, 3, 6] should be 10")
	}
}

func main() {
	var sum int
	radius := (1001 + 1) / 2

	sum += CalcSeqSum(1, 2, 8, radius)
	sum += CalcSeqSum(1, 4, 8, radius)
	sum += CalcSeqSum(1, 6, 8, radius)
	sum += CalcSeqSum(1, 8, 8, radius)

	sum -= 3

	println(sum)
}
