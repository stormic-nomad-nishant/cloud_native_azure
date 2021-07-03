from azure.servicebus import ServiceBusClient, ServiceBusMessage

import os
connstr = os.environ['SERVICE_BUS_CONN_STR']
queue_name = os.environ['SERVICE_BUS_QUEUE_NAME']

messages = ["Testing 1","Testing 2", "Testing 3"]

with ServiceBusClient.from_connection_string(connstr) as client:
  s = client.get_queue_sender(queue_name)
  r = client.get_queue_receiver(queue_name)

  print(s,r)

  for m in messages:
    s.send_messages(ServiceBusMessage(m))

  while True:
    print(r.receive_messages(max_message_count=1,max_wait_time=10))
