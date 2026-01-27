sqlplus user/pass
sqlplus user/pass@SERVICE
sqlplus / as sysdba

Vérifier les bases / instances
SELECT name FROM v$database;
SELECT instance_name FROM v$instance;
SELECT sys_context('USERENV','SERVICE_NAME') FROM dual;

Utilisateur
SELECT username FROM dba_users;
SELECT * FROM all_users;
SELECT * FROM user_users;

Tables
SELECT table_name FROM user_tables;
SELECT table_name FROM dba_tables WHERE owner='SOCOBIS';
SELECT table_name FROM all_tables WHERE owner='SOCOBIS';
DESC table_name;

Colonnes
DESCRIBE table_name;
SELECT column_name, data_type FROM user_tab_columns WHERE table_name='TABLE';

SET LINESIZE 200      
SET PAGESIZE 50       
SET COLSEP ' | '      
SET TRIMSPOOL ON    
SET WRAP OFF    



