SHOW wal_level;
alter system set wal_level to 'logical';


SELECT * from pg_publication;
SELECT * from pg_publication_tables;
CREATE PUBLICATION dbz_publication FOR ALL TABLES;,

SELECT * from pg_replication_slots;
SELECT pg_create_logical_replication_slot('debezium', 'pgoutput');

select pg_drop_replication_slot('debezium');
