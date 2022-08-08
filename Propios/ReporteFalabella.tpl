SELECT c.pat_veh
  FROM sim_pago_soat_plus c
      ,sim_datossoat      a
      ,a2000030           b
      ,c3150013           h
      ,c3150006           j
      ,c3150007           k
 WHERE h.cod_clase = a.clase_runt
   AND j.cod_marca_runt = a.marca_runt
   AND k.cod_marca_runt = j.cod_marca_runt
   AND k.secuencia = a.secuencia
   AND nvl(c.num_pol_soat, 0) > 0
   AND a.num_secu_pol = c.num_secu_pol_soat
   AND a.num_end = c.num_end_soat
   AND b.num_secu_pol = c.num_secu_pol_soat
   AND b.num_end = c.num_end_soat
   AND nvl(b.mca_provisorio, 'N') <> 'S'
   AND c.fecha_creacion BETWEEN add_months(to_date('25012022', 'ddmmyyyy'), -2) AND to_date('25012022', 'ddmmyyyy')
   AND c.cod_secc = 310
   AND c.cod_ramo = 315
   AND c.pat_veh IN ('MTA780', 'JBT276', 'RZI266');
