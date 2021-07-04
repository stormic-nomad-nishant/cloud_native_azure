package main

import (
	"context"
	"os"
  "os/signal"
  "fmt"

	eventhub "github.com/Azure/azure-event-hubs-go"
)

func main() {
	ctx := context.Background()
	hub, err := eventhub.NewHubFromConnectionString(os.Getenv("EVENTHUB_CONNECTION_STRING"))

  handler := func(c context.Context, event *eventhub.Event) error {
		fmt.Println(string(event.Data))
		return nil
	}

	runtimeInfo, err := hub.GetRuntimeInformation(ctx)
	if err != nil {
		fmt.Println(err)
		return
	}

	for _, partitionID := range runtimeInfo.PartitionIDs {

		listenerHandle, err := hub.Receive(ctx, partitionID, handler)
		if err != nil {
			fmt.Println(err)
			return
		}
    fmt.Println(listenerHandle)
  }


	signalChan := make(chan os.Signal, 1)
	signal.Notify(signalChan, os.Interrupt, os.Kill)
	<-signalChan

	err = hub.Close(context.Background())
	if err != nil {
		fmt.Println(err)
	}
}
