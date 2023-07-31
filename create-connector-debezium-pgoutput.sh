curl localhost:8083/connectors -X POST -H 'Content-Type: application/json' -k -u kc_username:kc_password -d '{
  "name": "debezium-connect-1",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "database.hostname": "postgres",
    "database.port": "5432",
    "database.user": "postgres",
    "database.password": "rot",
    "database.dbname" : "postgres",
    "database.server.name": "test1",
    "plugin.name": "pgoutput",
    "topic.prefix": "topic-connect",
    "table.include.list": "public.(.*)",
    "value.converter": "org.apache.kafka.connect.json.JsonConverter",
    "value.converter.schemas.enable": "true",
    "key.converter": "org.apache.kafka.connect.json.JsonConverter",
    "key.converter.schemas.enable": "true",
    "heartbeat.interval.ms":"50"
  }
}'