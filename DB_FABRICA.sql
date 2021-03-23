/*
autor: David Rodriguez Rivera
Fecha: 21/02/2021
Desc: Script para crear toda la base de datos de la fabrica
*/

SPOOL LogFabrica.txt

PROMPT INFORMACION DESPLIEGUE DE BASE DE DATOS
 
PROMPT 1. script CREATE USER DB_FABRICA
@@./DB_FABRICA/SCRIPTS/CREATE_USER_DB_FABRICA.sql 

PROMPT 2. Creacion de la tabla y trigger  ivn_referencias
@@./DB_FABRICA/TABLAS/CREATE_TABLE_INV_REFERENCIAS.tab

PROMPT 3. Creacion de la tabla ivn_tallas
@@./DB_FABRICA/TABLAS/CREATE_TABLE_INV_TALLAS.tab

PROMPT 4. Creacion de la tabla ivn_colores
@@./DB_FABRICA/TABLAS/CREATE_TABLE_INV_COLORES.tab

PROMPT 5. Creacion de la tabla ivn_inventario
@@./DB_FABRICA/TABLAS/CREATE_TABLE_INV_INVENTARIO.tab
 
PROMPT 6. Creacuion de la tabla inv_tipiden
@@./DB_FABRICA/TABLAS/CREATE_TABLE_INV_TIPIDEN.tab
 
PROMPT 7. Creacuion de la tabla inv_vendedores
@@./DB_FABRICA/TABLAS/CREATE_TABLE_INV_VENDEDORES.tab
 
PROMPT  Insert inicial del inventario
@@./DB_FABRICA/SCRIPTS/INSERT_INVENTARIO.sql

 PROMPT script secuences inicial del inventario
 @@./DB_FABRICA/SCRIPTS/ScriptSecuences.sql 
 
PROMPT EJECUCION DESPLIEGUE DE BASE DE DATOS TERMINADA 
 
SPOOL OFF;
/
