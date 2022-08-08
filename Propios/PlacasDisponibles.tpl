SELECT a.pat_veh
  FROM sim_datossoat a
 WHERE a.num_secu_pol IN (SELECT b.num_secu_pol
                            FROM a2000030 b
                           WHERE b.num_secu_pol = a.num_secu_pol
                             AND b.num_end = a.num_end
                             AND b.cod_cia = 3
                             AND b.cod_secc = 310
                             AND b.cod_ramo = 315
                             AND b.fecha_emi_end BETWEEN to_date('15062021', 'DDMMYYYY') AND to_date('01072021', 'DDMMYYYY')
                             AND b.num_end = 0);