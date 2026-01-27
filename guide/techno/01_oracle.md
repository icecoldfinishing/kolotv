Ouvrir PowerShell ou CMD en mode administrateur
net start OracleServiceXE
net start OracleXETNSListener

tester la connexion à Oracle
sqlplus / as sysdba
SELECT username, account_status FROM dba_users;

Arrêter via SQL*Plus (méthode “Oracle directe”)
SHUTDOWN IMMEDIATE;
EXIT;
lsnrctl stop




