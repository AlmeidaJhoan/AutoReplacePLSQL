"Poliza no recaudada" pasos:
1. Verificar que la Poliza exista
    select * from SIM_LOG_FASESIIS_SOAT WHERE NUM_POL1='1006500863201';    
2.Utilizar comando para agregar la poliza en tabla
    query base a continuacion, se hace el proceso y se crea la query siguiente
    SELECT * FROM A5021900 WHERE FEC_ASIENTO>'01/01/2023'
               AND COD_SECC=310 AND NUM_POL1=3552161033301 FOR UPDATE;
    se observa que ya esta creada la poliza en una de las tablas de facturación
    SELECT * FROM A5021900 WHERE FEC_ASIENTO>'01/01/2023'
               AND COD_SECC=310 AND NUM_POL1=1006500863201 FOR UPDATE;
3. En interfaz de simon ir a cancelacion
