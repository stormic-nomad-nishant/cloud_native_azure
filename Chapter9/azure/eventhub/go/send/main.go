package main

import (
	"context"
	"os"

	eventhub "github.com/Azure/azure-event-hubs-go"
)

func main() {
	ctx := context.Background()
	hub, err := eventhub.NewHubFromConnectionString(os.Getenv("EVENTHUB_CONNECTION_STRING"))

	if err != nil {
		panic(err)
	}

	err = hub.Send(ctx, eventhub.NewEventFromString("Hello Azure Event Hub!"))

	if err != nil {
		panic(err)
	}
}
