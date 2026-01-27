docker exec -it oracle-xe bash
sqlplus system/kolo0107@XE


CREATE USER kolo0107 IDENTIFIED BY kolo0107;
GRANT CONNECT, RESOURCE, DBA TO kolo0107;
GRANT UNLIMITED TABLESPACE TO kolo0107;


imp system/kolo0107 \
file=/dumps/export_20260122.dmp \
fromuser=KOLOTV \
touser=kolo0107 \
log=/dumps/export_20260122_import.log \
ignore=y

SELECT table_name FROM user_tables;

sqlplus kolo0107/kolo0107@XE
