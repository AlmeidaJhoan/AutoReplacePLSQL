UPDATE sim_informacion_runt R
   SET R.FECHA_MODIFICACION     = SYSDATE - 1,
       R.CR_FECHA_VIGENCIA      = SYSDATE + 15,
       R.SOAT_FECHA_VENCIMIENTO = SYSDATE + 30
 where ig_pat_veh = 'DLU655';

--CONSULTA...
select *from sim_informacion_runt f where 
f.soat_fecha_vencimiento > trunc(sysdate)
and f.fecha_modificacion > (trunc(sysdate) - 15)
and f.cr_fecha_vigencia > trunc(sysdate)
--and f.ig_pat_veh = 'DLU655';

UPDATE sim_informacion_runt R
   SET R.FECHA_MODIFICACION     = SYSDATE - 1,
       R.CR_FECHA_VIGENCIA      = SYSDATE + 15,
       R.SOAT_FECHA_VENCIMIENTO = SYSDATE + 30
       
       select * from sim_informacion_runt R where R.FECHA_MODIFICACION     = SYSDATE - 1 AND
       R.CR_FECHA_VIGENCIA      = SYSDATE + 15 AND
       R.SOAT_FECHA_VENCIMIENTO = SYSDATE + 30
    select * from sim_informacion_runt R where R.FECHA_MODIFICACION     < SYSDATE - 1 AND
       R.CR_FECHA_VIGENCIA      < SYSDATE + 15 AND
       R.SOAT_FECHA_VENCIMIENTO < SYSDATE + 30
       
       
