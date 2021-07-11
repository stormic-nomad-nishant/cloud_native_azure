#!/usr/bin/env python3

# Adapted from  https://pypi.org/project/azure-eventgrid/#send-an-event-grid-event
# pip3 install azure-eventgrid

import os,sys
from azure.core.credentials import AzureKeyCredential
from azure.eventgrid import EventGridPublisherClient, EventGridEvent


event = EventGridEvent(
    data={"team": "azure-sdk"},
    subject="Door1",
    event_type="Azure.Sdk.Demo",
    data_version="2.0"
)

try:
    credential = AzureKeyCredential(os.environ['AZ_EVENTGRID_ACCESS_KEY'])
    client = EventGridPublisherClient(sys.argv[1],credential)
    client.send(event)

except Exception as e:
    print(e)


