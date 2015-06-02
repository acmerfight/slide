package main

import (
	"fmt"
	"time"
)

func say() {
	time.Sleep(20)
	panic("no value for $USER")
}

func hi() {
	for {
		fmt.Println("hi")
	}
}

func main() {
	go say()
	go hi()
	time.Sleep(100000000000000000)
}
