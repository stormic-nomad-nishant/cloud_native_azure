package main

import (
	"context"
	"fmt"
	"log"
	"os"

	"github.com/nats-io/nats.go"
)

func main() {

	if len(os.Args) < 2 {
		fmt.Println("consumejs <nats-url> <subject pattern> <consumer> ")
		os.Exit(1)
	}

	nc, err := nats.Connect(os.Args[1], nats.UserInfo(os.Getenv("NATS_USER"), os.Getenv("NATS_PASSWORD")))
	if err != nil {
		panic(err)
	}

	js, _ := nc.JetStream()

	// subject, consumer
	sub, err := js.PullSubscribe(os.Args[2], os.Args[3])
	if err != nil {
		log.Println("pull sub: ", err)
	}

	// just do it in batches of 10
	for {
		msgs, err := sub.Fetch(10, nats.Context(context.Background()))
		if err != nil {
			log.Println("sub fetch: ", err)
			break
		}
		for _, msg := range msgs {
			log.Printf("Received: %s", msg.Data)
			_ = msg.Ack()
		}
	}

	sig := make(chan os.Signal, 1)
	log.Println("running...")
	<-sig
	log.Println("stop")
}
