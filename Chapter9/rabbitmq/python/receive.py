#!/usr/bin/env python3
import pika, sys, os

def main():
  connection = pika.BlockingConnection(pika.ConnectionParameters(host=sys.argv[1]))
  channel = connection.channel()
  channel.queue_declare(queue=sys.argv[2])

  def callback(ch, method, properties, body):
    print("%s" % body.decode())

  channel.basic_consume(queue=sys.argv[3], on_message_callback=callback, auto_ack=True)
  channel.start_consuming()

if __name__ == '__main__':
  try:
    main()
  except KeyboardInterrupt:
    print('Interrupted')
    try:
      sys.exit(0)
    except SystemExit:
      os._exit(0)
