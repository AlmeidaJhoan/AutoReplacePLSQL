SELECT sd.nro_soat,sd.* FROM sim_datossoat sd WHERE sd.pat_veh = 'MWZ332';
SELECT a.num_pol_cotiz,a.num_secu_pol,a.* FROM A2000030 a WHERE a.num_secu_pol = '29861169138'
SELECT * FROM sim_notificacion_recaudos_wsdv WHERE nro_cotizacion=3551000183601;
SELECT * FROM C3150005 c05 WHERE cod_tarifa = '511' ORDER BY fecha_equipo;
SELECT * FROM sim_placas_dscto_soat WHERE placa = 'MWZ332';