SELECT * FROM sim_soporte_programas t
WHERE UPPER(t.codigo_programa) = UPPER('SIM_PCK_PROCESO_DML_EMISION2')
ORDER BY t.fecha_estado DESC;
