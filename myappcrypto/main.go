package main

import (
	"fmt"

	"example.org/somelibrary/cryptonumbers"
)

func main() {
	cn, err := cryptonumbers.HashPassword("placeholder")
	if err != nil {
		fmt.Printf("Error: %v\n", err)
	} else {
		fmt.Printf("Hashed password: %x\n", cn)
	}
}
