package main

import (
	"fmt"
	"math"
)

func largestPrimeFactor(number uint64) uint64 {
	var largestFactor uint64 = 0

	for number%2 == 0 {
		largestFactor = 2
		number /= 2
	}

	var factor uint64 = 3
	for factor <= uint64(math.Sqrt(float64(number))) {
		if number%factor == 0 {
			largestFactor = factor
			number /= factor
		} else {
			factor += 2
		}
	}

	if number > largestFactor {
		largestFactor = number
	}

	return largestFactor
}

func main() {
	number := uint64(600851475143)
	result := largestPrimeFactor(number)
	fmt.Println(result)
}
