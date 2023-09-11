curl localhost:8083/connectors -X POST -H 'Content-Type: application/json' -k -u kc_username:kc_password -d '{
  "name": "debezium-connect-b2c",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "publication.name": "dbz_publication",
    "schema.include.list": "public",
    "schema.refresh.mode": "columns_diff",
    "slot.max.retries": "6",
    "database.sslmode": "disable",
    "database.sslcert": "",
    "poll.interval.ms": "1000",
    "interval.handling.mode": "numeric",
    "database.hostname": "postgres",
    "database.port": "5432",
    "database.user": "postgres",
    "database.password": "root",
    "database.dbname" : "postgres",
    "plugin.name": "pgoutput",
    "topic.prefix": "topic-connect-b2c-",
    "table.include.list": "public.(.*)",
    "value.converter": "org.apache.kafka.connect.json.JsonConverter",
    "value.converter.schemas.enable": "false",
    "key.converter": "org.apache.kafka.connect.json.JsonConverter",
    "key.converter.schemas.enable": "false",
    "heartbeat.interval.ms":"50",
    "slot.name" : "debezium_connect_b2c"
  }
}'