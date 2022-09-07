SELECT a.log_id, a.fecha, a.info1, a.info2, a.cod_respuesta, a.cod_respuesta_interno, a.log_full 
FROM ofv_log_general a 
where trunc(a.fecha) = trunc(sysdate)
and a.codigo_servicio_traza = 'SOAT_LIQUIDACION_PRINCIPAL'
order by a.log_id desc;
