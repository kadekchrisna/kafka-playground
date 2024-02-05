curl http://debezium-ui--preproduction.service.consul/api/connector/1/postgres -X POST -H 'Content-Type: application/json' -k -d '{
  "name": "impostor-b2c-sailfish-feed_order_so_odoos-uat",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "topic.prefix": "debezium.stg.impostor.b2c.sailfish",
    "database.hostname": "postgres-sailfish--stg.service.consul",
    "database.port": "5443",
    "database.user": "debezium",
    "database.password": "tweEuz8jYzQhfQ",
    "database.dbname": "sailfish",
    "database.sslmode": "disable",
    "publication.name": "debezium_publication",
    "publication.autocreate.mode": "disabled",
    "slot.name": "debezium_slot_impostor_stg_feed_order_so_odoos",
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
