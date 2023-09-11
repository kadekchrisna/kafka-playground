CREATE SOURCE CONNECTOR customers_reader WITH (
    'connector.class' = 'io.debezium.connector.postgresql.PostgresConnector',
    'database.hostname' = 'postgres-clean',
    'database.port' = '8765',
    'database.user' = 'postgres',
    'database.password' = 'root',
    'database.dbname' = 'postgres'
);