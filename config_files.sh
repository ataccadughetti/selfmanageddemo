#!/bin/sh



sleep 30s

echo "Creating the clickhouse connector .... "


### KEEP JSON CONVERTER EVEN IF IT IS AVRO :)

sleep 5

    curl -i -X POST http://localhost:8083/connectors -H "Content-Type:application/json" -H "Accept: application/json" \
    -d '{
            "name": "clickhouse-sink",
            "config": {
                "connector.class":"com.clickhouse.kafka.connect.ClickHouseSinkConnector",
                "tasks.max":"1",
                "topics": "pageviews",
                "ssl":"true",
                "hostname":"uzkee0x1rb.eu-west-1.aws.clickhouse.cloud",
                "database":"default",
                "security.protocol": "SSL",
                "password":"*******",
                "ssl.truststore.location": "/tmp/kafka.client.truststore.jks",
                "port": "8443",
                "value.converter.schemas.enable": "false",
                "value.converter": "org.apache.kafka.connect.json.JsonConverter",
                "exactlyOnce":"false",
                "auto.create.tables": true,
                "username":"default",
                "schemas.enable":"false",
                "table":"pageviews",
                "schemas.enable": "false",
                "errors.tolerance": "all"
            }
    }'


sleep 30


bash -c ' \
echo -e "\n\n=============\nWaiting for Kafka Connect to start listening on localhost ⏳\n=============\n"
while [ $(curl -s -o /dev/null -w %{http_code} http://localhost:8083/connectors) -ne 200 ] ; do
  echo -e "\t" $(date) " Kafka Connect listener HTTP state: " $(curl -s -o /dev/null -w %{http_code} http://localhost:8083/connectors) " (waiting for 200)"
  sleep 15
done
echo -e $(date) "\n\n--------------\n\o/ Kafka Connect is ready! Listener HTTP state: " $(curl -s -o /dev/null -w %{http_code} http://localhost:8083/connectors) "\n--------------\n"
'

sleep 10s

#docker cp 46d3156182b4:/etc/clickhouse-server/users.xml .
#docker cp users.xml 46d3156182b4:/etc/clickhouse-server/users.xml

sleep 10s


#to clean
#curl -X DELETE http://localhost:8083/connectors/clickhouse-sink -H "Content-Type:application/json" -H "Accept: application/json" 
#curl -X DELETE http://localhost:8083/connectors/datagen -H "Content-Type:application/json" -H "Accept: application/json" 
#curl -X DELETE http://localhost:8083/connectors/datagen_pageviews -H "Content-Type:application/json" -H "Accept: application/json" 







# VERIFY THE CONNECTOR STATUS
http http://localhost:8083/connectors/clickhouse-sink/status -b

#open http://localhost:8083/connector-plugins

#Verify connectors
#open http://localhost:8083/connectors/

