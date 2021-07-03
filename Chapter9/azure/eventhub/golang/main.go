package main

import (
  "os"
  "fmt"

	eventhub "github.com/Azure/azure-event-hubs-go"
)

func main () {
  hub, err := eventhub.NewHubFromConnectionString(os.Getenv("EVENT_HUBS_NAMESPACE_CONNECTION_STRING"))

  if err !=  nil {
    panic(err)
  }

  fmt.Println(hub)

}

