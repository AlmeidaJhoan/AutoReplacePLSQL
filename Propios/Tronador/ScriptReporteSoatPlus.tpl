SELECT SUBSTR(CADENA,1,INSTR(CADENA,'|',1,1)-1) AS POLIZA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,1)+1,INSTR(CADENA,'|',1,2)-INSTR(CADENA,'|',1,1)-1) AS ENDOSO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,2)+1,INSTR(CADENA,'|',1,3)-INSTR(CADENA,'|',1,2)-1) AS LOCALIDAD,
SUBSTR(CADENA,INSTR(CADENA,'|',1,3)+1,INSTR(CADENA,'|',1,4)-INSTR(CADENA,'|',1,3)-1) AS INTERMEDIARIO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,4)+1,INSTR(CADENA,'|',1,5)-INSTR(CADENA,'|',1,4)-1) AS NOMBRE_INTERMEDIARIO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,5)+1,INSTR(CADENA,'|',1,6)-INSTR(CADENA,'|',1,5)-1) AS NRO_SOAT,
SUBSTR(CADENA,INSTR(CADENA,'|',1,6)+1,INSTR(CADENA,'|',1,7)-INSTR(CADENA,'|',1,6)-1) AS FECHA_EXPED, 
SUBSTR(CADENA,INSTR(CADENA,'|',1,7)+1,INSTR(CADENA,'|',1,8)-INSTR(CADENA,'|',1,7)-1) AS FECHA_EMISION, 
SUBSTR(CADENA,INSTR(CADENA,'|',1,8)+1,INSTR(CADENA,'|',1,9)-INSTR(CADENA,'|',1,8)-1) AS FECHA_INICIO, 
SUBSTR(CADENA,INSTR(CADENA,'|',1,9)+1,INSTR(CADENA,'|',1,10)-INSTR(CADENA,'|',1,9)-1) AS FECHA_FIN, 
SUBSTR(CADENA,INSTR(CADENA,'|',1,10)+1,INSTR(CADENA,'|',1,11)-INSTR(CADENA,'|',1,10)-1) AS DIAS, 
SUBSTR(CADENA,INSTR(CADENA,'|',1,11)+1,INSTR(CADENA,'|',1,12)-INSTR(CADENA,'|',1,11)-1) AS DOCUMENTO,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,12)+1,INSTR(CADENA,'|',1,13)-INSTR(CADENA,'|',1,12)-1) AS TIPO_DCTO,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,13)+1,INSTR(CADENA,'|',1,14)-INSTR(CADENA,'|',1,13)-1) AS NOMBRE,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,14)+1,INSTR(CADENA,'|',1,15)-INSTR(CADENA,'|',1,14)-1) AS PLACA,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,15)+1,INSTR(CADENA,'|',1,16)-INSTR(CADENA,'|',1,15)-1) AS CLASE,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,16)+1,INSTR(CADENA,'|',1,17)-INSTR(CADENA,'|',1,16)-1) AS MARCA,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,17)+1,INSTR(CADENA,'|',1,18)-INSTR(CADENA,'|',1,17)-1) AS LINEA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,18)+1,INSTR(CADENA,'|',1,19)-INSTR(CADENA,'|',1,18)-1) AS MODELO,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,19)+1,INSTR(CADENA,'|',1,20)-INSTR(CADENA,'|',1,19)-1) AS MOTOR,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,20)+1,INSTR(CADENA,'|',1,21)-INSTR(CADENA,'|',1,20)-1) AS CHASIS,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,21)+1,INSTR(CADENA,'|',1,22)-INSTR(CADENA,'|',1,21)-1) AS CILINDRAJE,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,22)+1,INSTR(CADENA,'|',1,23)-INSTR(CADENA,'|',1,22)-1) AS TARIFA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,23)+1,INSTR(CADENA,'|',1,24)-INSTR(CADENA,'|',1,23)-1) AS PASAJEROS,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,24)+1,INSTR(CADENA,'|',1,25)-INSTR(CADENA,'|',1,24)-1) AS SERVICIO,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,25)+1,INSTR(CADENA,'|',1,26)-INSTR(CADENA,'|',1,25)-1) AS CAPACIDAD,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,26)+1,INSTR(CADENA,'|',1,27)-INSTR(CADENA,'|',1,26)-1) AS FECHA_ANULACION,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,27)+1,INSTR(CADENA,'|',1,28)-INSTR(CADENA,'|',1,27)-1) AS TIPO_END,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,28)+1,INSTR(CADENA,'|',1,29)-INSTR(CADENA,'|',1,28)-1) AS POLIZA_ANT,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,29)+1,INSTR(CADENA,'|',1,30)-INSTR(CADENA,'|',1,29)-1) AS PAIS,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,30)+1,INSTR(CADENA,'|',1,31)-INSTR(CADENA,'|',1,30)-1) AS RENOVADA_POR,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,31)+1,INSTR(CADENA,'|',1,32)-INSTR(CADENA,'|',1,31)-1) AS PRIMA,            
SUBSTR(CADENA,INSTR(CADENA,'|',1,32)+1,INSTR(CADENA,'|',1,33)-INSTR(CADENA,'|',1,32)-1) AS FOSYGA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,33)+1,INSTR(CADENA,'|',1,34)-INSTR(CADENA,'|',1,33)-1) AS USUARIO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,34)+1,INSTR(CADENA,'|',1,35)-INSTR(CADENA,'|',1,34)-1) AS ENVIADA_RUNT,
SUBSTR(CADENA,INSTR(CADENA,'|',1,35)+1,INSTR(CADENA,'|',1,36)-INSTR(CADENA,'|',1,35)-1) AS CAUSAL,
SUBSTR(CADENA,INSTR(CADENA,'|',1,36)+1,INSTR(CADENA,'|',1,37)-INSTR(CADENA,'|',1,36)-1) AS FECHA_IMPRESION,
SUBSTR(CADENA,INSTR(CADENA,'|',1,37)+1,INSTR(CADENA,'|',1,38)-INSTR(CADENA,'|',1,37)-1) AS VALOR_CONT_RUNT,
SUBSTR(CADENA,INSTR(CADENA,'|',1,38)+1,INSTR(CADENA,'|',1,39)-INSTR(CADENA,'|',1,38)-1) AS CONVENIO_FALABELLA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,39)+1,INSTR(CADENA,'|',1,40)-INSTR(CADENA,'|',1,39)-1) AS CONVENIO_BOLIVAR,
SUBSTR(CADENA,INSTR(CADENA,'|',1,40)+1,INSTR(CADENA,'|',1,41)-INSTR(CADENA,'|',1,40)-1) AS DESC_CONVENIO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,41)+1,INSTR(CADENA,'|',1,42)-INSTR(CADENA,'|',1,41)-1) AS COTIZACION,
SUBSTR(CADENA,INSTR(CADENA,'|',1,42)+1,INSTR(CADENA,'|',1,43)-INSTR(CADENA,'|',1,42)-1) AS PORC_COMIS,
SUBSTR(CADENA,INSTR(CADENA,'|',1,43)+1,INSTR(CADENA,'|',1,44)-INSTR(CADENA,'|',1,43)-1) AS COMIS_INTER,
SUBSTR(CADENA,INSTR(CADENA,'|',1,44)+1,INSTR(CADENA,'|',1,45)-INSTR(CADENA,'|',1,44)-1) AS CIUDAD_TOM,
SUBSTR(CADENA,INSTR(CADENA,'|',1,45)+1,INSTR(CADENA,'|',1,46)-INSTR(CADENA,'|',1,45)-1) AS DES_CIUDAD_TOM,
SUBSTR(CADENA,INSTR(CADENA,'|',1,46)+1,INSTR(CADENA,'|',1,47)-INSTR(CADENA,'|',1,46)-1) AS DEPTO_TOM,
SUBSTR(CADENA,INSTR(CADENA,'|',1,47)+1,INSTR(CADENA,'|',1,48)-INSTR(CADENA,'|',1,47)-1) AS DES_DEPTO_TOM,
SUBSTR(CADENA,INSTR(CADENA,'|',1,48)+1,INSTR(CADENA,'|',1,49)-INSTR(CADENA,'|',1,48)-1) AS DIRECCION,
SUBSTR(CADENA,INSTR(CADENA,'|',1,49)+1,INSTR(CADENA,'|',1,50)-INSTR(CADENA,'|',1,49)-1) AS CORREO_ENVIO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,50)+1,INSTR(CADENA,'|',1,51)-INSTR(CADENA,'|',1,50)-1) AS REGISTRO_SIIS,
SUBSTR(CADENA,INSTR(CADENA,'|',1,51)+1,INSTR(CADENA,'|',1,52)-INSTR(CADENA,'|',1,51)-1) AS FECHA_HORA_EXPE,
SUBSTR(CADENA,INSTR(CADENA,'|',1,52)+1,INSTR(CADENA,'|',1,53)-INSTR(CADENA,'|',1,52)-1) AS FORMA_DE_PAGO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,53)+1,INSTR(CADENA,'|',1,54)-INSTR(CADENA,'|',1,53)-1) AS NRO_APROBACION,
SUBSTR(CADENA,INSTR(CADENA,'|',1,54)+1,INSTR(CADENA,'|',1,55)-INSTR(CADENA,'|',1,54)-1) AS FRANQUICIA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,55)+1,INSTR(CADENA,'|',1,56)-INSTR(CADENA,'|',1,55)-1) AS NRO_TARJETA,
SUBSTR(CADENA,INSTR(CADENA,'|',1,56)+1,INSTR(CADENA,'|',1,57)-INSTR(CADENA,'|',1,56)-1) AS VOUCHER, 
SUBSTR(CADENA,INSTR(CADENA,'|',1,57)+1,INSTR(CADENA,'|',1,58)-INSTR(CADENA,'|',1,57)-1) AS FECHA_TRANSACCION,
SUBSTR(CADENA,INSTR(CADENA,'|',1,58)+1,INSTR(CADENA,'|',1,59)-INSTR(CADENA,'|',1,58)-1) AS VALOR_RECAUDADO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,59)+1,INSTR(CADENA,'|',1,60)-INSTR(CADENA,'|',1,59)-1) AS VALOR_EMITIDO,
SUBSTR(CADENA,INSTR(CADENA,'|',1,60)+1,INSTR(CADENA,'|',1,61)-INSTR(CADENA,'|',1,60)-1) AS CELULAR
  FROM C9999908
 WHERE COD_USR= 'SIMREPSOATPLUS'
   AND FECHA_EQUIPO BETWEEN TO_DATE('01012021','DDMMYYYY') AND TO_DATE(TO_CHAR(SYSDATE,'DDMMYYYY'),'DDMMYYYY')
ORDER BY SIM_SECUENCIA ASC

        DELETE c9999908 WHERE cod_usr = 'SIMREPSOATPLUS';
DELETE FROM C9999908 WHERE  COD_USR= 'SIMREPSOATPLUS'
   AND FECHA_EQUIPO BETWEEN TO_DATE('01012021','DDMMYYYY') AND TO_DATE(TO_CHAR(SYSDATE,'DDMMYYYY'),'DDMMYYYY');
   
        SELECT UC.*
FROM SIM_USUARIOS_CONVENIOS uc
INNER JOIN USUARIO U
ON UC.USUARIO_HAB=U.CEDULA_EMPLEADO
INNER JOIN SIM_CONVENIO_SEGUROS S
ON UC.CONVENIO=S.CONVENIO
WHERE U.codigo_perfil IN('SIREPFAL01','SICREPFAL01')
AND UC.FECHA_BAJA IS NULL
AND U.ESTADO_USUARIO='A'
AND substr(S.CODIGO_EXTERNO,1,3) IN ('FAL','CAR');

select * from sim_datossoat

SELECT * FROM sim_informacion_runt

select A.CODIGO_USUARIO,
A.NOMBRE_EMPLEADO,
A.FECHA_ULTIMO_ACCESO,
C.COD_CAMPO
FROM USUARIO A, SIM_USUARIOS_CONVENIOS B, C9999909 C
WHERE A.CODIGO_USUARIO = B.USUARIO_HAB
AND C.DAT_CAR = A.CODIGO_PERFIL
AND A.ESTADO_USUARIO = 'A'
AND B.FECHA_BAJA IS NULL
AND SUBSTR(B.CONVENIO, 3, 5) IN (SELECT C.CODIGO FROM C9999909 C WHERE C.COD_TAB = 'CLAVES_FALABELLA')
