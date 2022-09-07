
select * from SIM_REPORTES WHERE id_reporte = 717; --ESTE ES EL REPORTE DE FALABELLA SIMON WEB
select * from SIM_CONVENIO_SEGUROS B
LEFT JOIN SIM_CONVENIO_PTOSVTA scp on scp.convenio = B.CONVENIO
 where SUBSTR(B.CONVENIO, 3, 5) IN (SELECT C.CODIGO
                                      FROM C9999909 C
                                     WHERE C.COD_TAB = 'CLAVES_FALABELLA');                                
select * from c9999909 where cod_tab = 'CLAVES_FALABELLA'; --Estas son las parametricas de las claves de agentes falabella                                     
