package main

import (
	"context"
	"fmt"
	"os"
  "time"

	eventhub "github.com/Azure/azure-event-hubs-go"
)

func main() {
  ctx, cancel := context.WithTimeout(context.Background(), 20*time.Second)

  defer cancel()
	hub, err := eventhub.NewHubFromConnectionString(os.Getenv("EVENTHUB_CONNECTION_STRING"))

	if err != nil {
		panic(err)
	}

	fmt.Println(hub)

  err = hub.Send(ctx, eventhub.NewEventFromString("hello Azure!"))
	fmt.Println(err)

  if err != nil {
    panic(err)
  }
}
