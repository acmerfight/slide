package main

import (
	"fmt"
	"net/http"
	"time"
)

func say() {
	time.Sleep(20)
	resp, _ := http.Get("http://example.co/")
	fmt.Println(resp.Body)
	//panic("no value for $USER")
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
