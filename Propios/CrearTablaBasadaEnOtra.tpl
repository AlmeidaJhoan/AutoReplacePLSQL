-- Create tabla basada en otra
create table sim_comisiones_iva_soat AS SELECT * FROM a2000252 WHERE 1=0;

CREATE OR REPLACE PUBLIC SYNONYM sim_comisiones_iva_soat FOR ops$puma.sim_comisiones_iva_soat;
/
GRANT ALL ON sim_comisiones_iva_soat TO PUBLIC;
