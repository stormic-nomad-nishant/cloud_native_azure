
echo -n "Enter Resource Group> "
read RES_GROUP

echo -n "Enter ServiceBus Namespace> "
read NAMESPACE_NAME

export SERVICE_BUS_CONN_STR=$(az servicebus namespace authorization-rule keys list --resource-group $RES_GROUP --namespace-name $NAMESPACE_NAME --name RootManageSharedAccessKey --query primaryConnectionString --output tsv)

echo $SERVICE_BUS_CONN_STR
