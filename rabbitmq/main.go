package main

import (
	"flag"
	"kafka-local/rabbitmq/playground"
)

var flags *string
var loops *int

func init() {
	// Tie the command-line flag to the intervalFlag variable and
	// set a usage message.
	flags = flag.String("flag", "", "!!!!")
	loops = flag.Int("loops", 1, "!!!!")
}

func main() {

	flag.Parse()
	if *flags == "send" {
		for i := 0; i < *loops; i++ {
			playground.Send()
		}

		return
	}

	playground.Recieve()

}
