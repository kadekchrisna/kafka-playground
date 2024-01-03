curl http://debezium-ui--production.service.consul/api/connector/1/postgres -X POST -H 'Content-Type: application/json' -k -d '{
  "name": "impostor-b2c-sailfish-feed_order_so_odoos-prod",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "topic.prefix": "debezium.prod.impostor.b2c.sailfish",
    "database.hostname": "db-postgresql-sailfish-master.service.consul",
    "database.port": "5432",
    "database.user": "debezium_impostor",
    "database.password": "M6dkGSD58URa4d",
    "database.dbname": "sailfish",
    "database.sslmode": "disable",
    "publication.name": "debezium_publication",
    "publication.autocreate.mode": "disabled",
    "slot.name": "debezium_slot_impostor_feed_order_so_odoos",
    "plugin.name": "pgoutput",
    "replica.identity.autoset.values": "public.feed_order_so_odoos:FULL",
    "slot.drop.on.stop": "false",
    "schema.include.list": "public",
    "table.include.list": "public.feed_order_so_odoos",
    "snapshot.mode": "never",
    "heartbeat.interval.ms": "10000",
    "schema.refresh.mode": "columns_diff",
    "key.converter.schemas.enable": "false",
    "value.converter.schemas.enable": "false",
    "value.converter": "org.apache.kafka.connect.json.JsonConverter",
    "key.converter": "org.apache.kafka.connect.json.JsonConverter"
  }
}'