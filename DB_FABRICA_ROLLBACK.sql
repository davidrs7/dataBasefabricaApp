/*
autor: David Rodriguez Rivera
Fecha: 21/02/2021
Desc: Script para eliminar toda la base de datos de la fabrica
*/

SPOOL LogENTREGA_DB_FABRICAROLLBACK.txt

PROMPT INFORMACION DESPLIEGUE

PROMPT DROP TODO LO CREADO
PROMPT DROP_DB_FABRICA
@@./DB_FABRICA/ROLLBACK/DROP_DB_FABRICA.sql

PROMPT EJECUCION TERMINADA

SPOOL OFF;
