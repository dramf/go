package main

import (
	"fmt"
	"github.com/dramf/go/invers"
)

func main() {
	fmt.Println("Hello from Go Base")

	fmt.Printf("Inverse(%t) == %t\n", true, invers.Invers(true))
}