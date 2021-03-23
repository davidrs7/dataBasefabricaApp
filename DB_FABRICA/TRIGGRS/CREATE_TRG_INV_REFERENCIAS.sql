CREATE OR REPLACE TRIGGER trg_id_inv_referencias
BEFORE INSERT ON db_fabrica.inv_referencias
FOR EACH ROW
BEGIN
IF :new.ref_codigo IS NULL THEN 
SELECT SEQ_REFERENCIAS.NEXTVAL 
INTO :new.ref_codigo
FROM dual;
END IF;
END;
/
