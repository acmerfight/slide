package main

import (
	"fmt"
	// "runtime"
	"time"
)

func say() {
	for {
	}
}

func hi() {
	fmt.Println("hi")
}

func main() {
	// runtime.GOMAXPROCS(4)
	go say()
	// fmt.Println("XXX")
	go hi()
	time.Sleep(100000000000000000)
}
