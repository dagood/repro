package main

import (
	"fmt"

	"example.org/somelibrary/numbers"
)

func main() {
	fmt.Printf("Hello, sequence: %v\n", numbers.Join([]int{1, 2, 3, 100}, ", "))
}
