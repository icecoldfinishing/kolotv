
Étape 1 : Démarrer Oracle

net start OracleServiceORCL
sqlplus / as sysdba
STARTUP;
DROP USER kolo0107 CASCADE;
CREATE USER kolo0107 IDENTIFIED BY kolo0107;
GRANT ALL PRIVILEGES TO kolo0107;
EXIT;

Étape 2 : Importer le fichier .dmp
sqlplus / as sysdba
STARTUP;
DROP USER dba_temp CASCADE;
CREATE USER dba_temp IDENTIFIED BY temp123;
GRANT DBA TO dba_temp;
EXIT;
net start OracleServiceORCL
net start OracleOraDB11g_home1TNSListener

imp dba_temp/temp123 file=kolo0107_20251107.dmp fromuser=kolo0107 touser=kolo0107 log=kolo0107_import.log ignore=y
sqlplus kolo0107/kolo0107
SELECT table_name FROM user_tables;

Étape 3 : configurer kolo0107 pour qu’il se connecte à Oracle
Modifier apj.properties pour ton environnement local
apj.connection.url=jdbc:oracle:thin:@localhost:1521:ORCL
apj.connection.user=kolo0107
apj.connection.password=kolo0107


Étape 4 : compiler et lancer kolo0107
ant -f build.xml

Étape 5 : verification apj.connection.url
lsnrctl status

