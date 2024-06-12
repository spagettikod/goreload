package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Started tester, will print output every 2 seconds...")
	start := time.Now()
	for {
		fmt.Printf("\ttime elapsed since starting tester: %v\n", time.Since(start))
		time.Sleep(2 * time.Second)
	}
}
