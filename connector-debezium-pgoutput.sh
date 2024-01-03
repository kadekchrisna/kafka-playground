curl -i -X DELETE localhost:8083/connectors/debezium-connect-1/

curl -i -X GET http://debezium--production.service.consul/connectors/


curl -i -X GET http://debezium--production.service.consul/connectors/impostor-b2c-sailfish-feed_order_so_odoos-prod
curl -i -X GET http://debezium-ui--production.service.consul/api/connectors/1



curl -i -X GET http://debezium--preproduction.service.consul/connectors/impostor-b2c-sailfish-feed_order_so_odoos-uat


curl -i -X GET http://debezium-ui--preproduction.service.consul/api/connectors/1

