
select * from SIM_REPORTES WHERE id_reporte = 717; --ESTE ES EL REPORTE DE FALABELLA SIMON WEB
select * from SIM_CONVENIO_SEGUROS B
LEFT JOIN SIM_CONVENIO_PTOSVTA scp on scp.convenio = B.CONVENIO
 where SUBSTR(B.CONVENIO, 3, 5) IN (SELECT C.CODIGO
                                      FROM C9999909 C
                                     WHERE C.COD_TAB = 'CLAVES_FALABELLA');                                
select * from c9999909 where cod_tab = 'CLAVES_FALABELLA'; --Estas son las parametricas de las claves de agentes falabella

select * from SIM_USUARIOS_CONVENIOS WHERE USUARIO_HAB = '12345672'; --convenio = '1637566000' 
SELECT * FROM SIM_CONVENIO_SEGUROS WHERE  codigo_externo is not null; --convenio = '1537566001'  aca tendria EL FAL O CAR
SELECT * FROM SIM_CONVENIO_PTOSVTA WHERE convenio = '1537566001';
--SELECT * FROM SIM_CONVENIO_SEGUROS where convenio in(1537566002,52347976);
--select * from sim_convenio_comision where convenio in(1537566002) and cod_grupo = 1;
