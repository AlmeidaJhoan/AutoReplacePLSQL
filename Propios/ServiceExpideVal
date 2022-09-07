--VALIDAR EMISION Y PROBAR SERVICE EXPIDE (USUARIO EMITIR DIRECTO) --> 1023877352 USUARIO QUE GENERA COTIZACION EL QUE ES POR DEFECTO


SELECT s.nro_soat, s.fecha_creacion ,S.ESTADO_IMPRESION, s.* FROM sim_datossoat s WHERE s.pat_veh = 'CGP10F' ORDER BY s.fecha_creacion DESC
--Otra forma  select * from a2000030 a
--where a.nro_documto = 52912807 AND TRUNC(fecha_emi) ='5/09/2022' que es el usuario con el que se emitio el tomador
--PARA QUE GENERE BIEN TOCA EN ESTE CASO CON UNA PLACA QUE NO TENGA COHEXITENCIA YA QUE SE DISPARE ESE CONTROL TECNICO
SELECT a.num_pol1,a.* from a2000030 a  WHERE a.num_secu_pol = '29861189123' FOR UPDATE --control tecnico autorizado, visualizado, provisiorio es cuando dispara un control tecnico -- 
SELECT * FROM A2000220 a WHERE a.num_secu_pol = '29861189123' --controles tecnicos de la poliza
SELECT * FROM g2000210 g WHERE g.cod_error = '524'; --mensajes de controles tecnicos
--SELECT * FROM sim_informacion_runt r WHERE r.ig_pat_veh = 'CGP10F'

SELECT sl.* FROM sim_log_webservices sl
 WHERE rownum <= 12
  AND sl.codigows LIKE '%SIM_PCK_ACCESO_SERVICIOS.Proc_ServiceExpideTipoproceso%'
 AND TRUNC(sl.fecha_inicio) = trunc(SYSDATE)
 AND sl.id_simlogws >  (SELECT MAX(id_simlogws) FROM sim_log_webservices)-4 ORDER BY sl.fecha_inicio DESC
 
 --CONVENIO QUE NO TENGA EMISION ANTICIPADA NI FECHA BAJA Y QUE POSIBLEMENTE EL CONVENIO EMPIECE EN 15 Y SEA NIT PARA GENERAR COTIZACION
select *from sim_convenio_seguros c where trunc(c.fecha_vig) > '01-01-2020';
select *from sim_usuarios_convenios u where u.usuario_hab = '1023877352' FOR UPDATE; --Convenio Nestle 1552365004 antes tenia el 1530904000 este usuario

--SIM_PAGOS_SEGUROS PARA VER QUIEN LA EMITIO
--SIM_PAGO_SOAT_PLUS TAMBIEN PAGOS DE SOAT FALABELLA


--VERIFICAR COMO QUEDO LOS DATOS SERVICE_EXPIDE
--240 241 --> Cotizacion
--260 261 --> Emision Directa 
-- 39393644 (POLIZA) ---- 39393669 (COTIZACION) EXAMPLE (TEST)

    SELECT xmltype(slw.objeto_entrada)
              ,xmltype(slw.tipo_proceso)
          FROM sim_log_webservices slw
         WHERE id_simlogws = 39393669;
         
