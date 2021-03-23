/*
AUTOR: DAVID RODRIGUEZ RIVERA
FECHA: 21/02/2021
DESC:  CREACIÓN DEL ESQUEMA DB_FABRICA SI NO EXISTE 
*/

DECLARE 
VALOR NUMBER; 
MY_USER VARCHAR2(30) := 'DB_FABRICA';
MY_PW VARCHAR2(30) := 'ferdayis123';

BEGIN 

SELECT COUNT(*) INTO VALOR FROM ALL_USERS WHERE USERNAME = MY_USER;

IF  (VALOR = 0 ) THEN 
  EXECUTE IMMEDIATE ' CREATE USER ' || MY_USER || ' IDENTIFIED BY ' || MY_PW  ;  
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' CREADO EXISTOSAMENTE!');
  EXECUTE IMMEDIATE 'GRANT create session TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT session EXITOSO!');
   EXECUTE IMMEDIATE 'GRANT create table  TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT table  EXITOSO!');
   EXECUTE IMMEDIATE 'GRANT create view  TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT view  EXITOSO!');
   EXECUTE IMMEDIATE 'GRANT create any trigger TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT any trigger EXITOSO!');
   EXECUTE IMMEDIATE 'GRANT create any procedure TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT any procedure EXITOSO!');
   EXECUTE IMMEDIATE 'GRANT create sequence  TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT sequence  EXITOSO!');
     EXECUTE IMMEDIATE 'GRANT create synonym   TO ' || MY_USER  ; 
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' GRANT synonym   EXITOSO!');
  ELSE
  DBMS_OUTPUT.put_line ('USUARIO: ' || MY_USER || ' YA EXISTE!');  

 END IF;
    VALOR := 0;
 



END;
/ 
 
