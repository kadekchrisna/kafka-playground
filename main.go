package main

import (
	"flag"
	"fmt"
)

var (
	assignor = ``
)

func init() {
	flag.StringVar(&assignor, "assignor", "range", "Consumer group partition assignment strategy (range, roundrobin, sticky)")
	flag.Parse()
}

func main() {

	fmt.Println(assignor)

}
