#!/usr/bin/env python3
import pika, sys, os

def main():
  connection = pika.BlockingConnection(pika.ConnectionParameters(host=sys.argv[1]))
  channel = connection.channel()
  channel.queue_declare(queue=sys.argv[2])

  def callback(ch, method, properties, body):
    print("%s" % body.decode())

  if len (sys.argv) == 5:
    if sys.argv == "no-ack":
      ACK=False
    else:
      ACK=False
  else:
    ACK=True
    
  channel.basic_consume(queue=sys.argv[3], on_message_callback=callback, auto_ack=ACK)
  channel.start_consuming()

if __name__ == '__main__':
  if len(sys.argv) < 4:
    print ("./receive.py hostname channel queue [no-ack]")
    sys.exit(0)
  try:
    main()
  except KeyboardInterrupt:
    print('Interrupted')
    try:
      sys.exit(0)
    except SystemExit:
      os._exit(0)
