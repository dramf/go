package main

import "fmt"

func main() {
	fmt.Println("Hello from Go Base")
	fmt.Printf("Inverse(%t) == %t", true, Invers(true))
}

func Invers(in bool) bool {
	return !in
}