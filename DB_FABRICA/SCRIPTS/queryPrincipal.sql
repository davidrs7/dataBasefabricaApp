SELECT REFE.REF_DESCRIPCION,TALLA.TALLA_DESCRIPCION,COLOR.COLOR_DESCRIPCION,INV.CANTIDAD 
FROM DB_FABRICA.INV_INVENTARIO INV
INNER JOIN DB_FABRICA.INV_REFERENCIAS REFE ON INV.REF_CODIGO = REFE.REF_CODIGO
INNER JOIN DB_FABRICA.INV_COLORES COLOR ON INV.COLOR_CODIGO = COLOR.COLOR_CODIGO
INNER JOIN DB_FABRICA. INV_TALLAS TALLA ON  INV.TALLA_CODIGO = TALLA.TALLA_CODIGO