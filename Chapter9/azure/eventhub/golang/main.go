package main

import (
  "os"
  "fmt"
  "context"

	eventhub "github.com/Azure/azure-event-hubs-go"
)

func main () {
  ctx := context.Background()
  hub, err := eventhub.NewHubFromConnectionString(os.Getenv("EVENT_HUBS_NAMESPACE_CONNECTION_STRING"))

  if err !=  nil {
    panic(err)
  }

  fmt.Println(hub)
  hub.Send(ctx,eventhub.NewEventFromString("hello Azure!"))
  hub.Send(ctx,eventhub.NewEventFromString("hello Azure!"))
  hub.Send(ctx,eventhub.NewEventFromString("hello Azure!"))

}

