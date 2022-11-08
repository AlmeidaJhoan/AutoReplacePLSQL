SOLUCION ESTCORE-6625
AJUSTE MASIVO COMISIONES AGENTES Y CORREDORES SOAT
1. Se debe recibir por parte del usuario el archivo con los nuevos valores separados por ;
El archivo debe traer, el codigo del convenio, el porcentaje de comisión por cada tarifa, si tiene
decimales, el carácter decimal debe ser punto(.). Luego debe traer los valores para las demás
columnas que quieran actualizar . A continuación un ejemplo válido del archivo a procesar:
1237624000;0;5.4;5.4;5.4;5.4;5.4;5.4;5.4;5.4;20;29000000;
2. La información de este archivo se debe guardar en alguna tabla del sistema para que sea facil
procesarla, para este caso, se elaborò el siguiente sqlloader que lo carga en la tabla de trabajo C9999040.
infile '/u/home/intasi33/comissept.csv'
badfile '/u/home/intasi33/comissept.bad'
discardfile '/u/home/intasi33/comissept.dsc'
APPEND into table C9999040
fields terminated by ';'
(
usuario CONSTANT 'COMISSEPT',
orden ,
COLNUM01 ,
COLNUM02 ,
COLNUM03 ,
COLNUM04 ,
COLNUM05 ,
COLNUM06 ,
COLNUM07 ,
COLNUM08 ,
COLNUM09 ,
COLNUM10 ,
COLNUM11
)
los home varian de acuerdo al usuario y ambiente en que se trabaje, Este archivo se guarda con extensión
.ctl
Luego se elabora el archivo shell (sh) que permite ejecutar el ctl
Para este caso es:
sqlload / control=/u/home/intasi33/comissept.ctl log=/u/home/intasi33/comissept.log
Este archivo se debe guradar con extensión .sh y debe ejecutar el ctl creado anteriormente.
Para ejecutar el cargue se ejecuta desde el home de tronador linux así:
sh xxxxxx.sh
Una vez termine, se debe revisar el archivo log para ver el resultado.

Luego se puede validar desde pl directamente los datos en la tabla
select orden convenio,
COLNUM01 tarifa1 ,
COLNUM02 tarifa2,
COLNUM03 tarifa3,
COLNUM04 tarifa4,

COLNUM05 tarifa5 ,
COLNUM06 tarifa6,
COLNUM07 tarifa7,
COLNUM08 tarifa8,
COLNUM09 tarifa9,
COLCAR10 diascartera,
COLCAR11 montocartera
from c9999040
where usuario = 'COMISSEPT' ;
Confirmado el cargue, se debe ejecutar el script de actualización, donde primero se deben insertar los
registros en la tabla C9999040 los cuales se sacan de la misma tabal en el ambiente en el que se hayan
realizado las pruebas. Seguidamente en el script, se ejecuta la logica para las respectivas actualizaciones.

DECLARE
cursor c1 is
select orden convenio,
COLNUM01 tarifa1 ,
COLNUM02 tarifa2,
COLNUM03 tarifa3,
COLNUM04 tarifa4,
COLNUM05 tarifa5 ,
COLNUM06 tarifa6,
COLNUM07 tarifa7,
COLNUM08 tarifa8,
COLNUM09 tarifa9,
COLCAR10 diascartera,
COLCAR11 montocartera
from c9999040
where usuario = 'COMIS5SOAT' ;
begin
for i in c1 loop
update sim_convenio_seguros u set u.dias_cartera = i.diascartera,
u.monto_max_cartera = i.montocartera

where h.convenio = i.convenio;
update sim_convenio_comision h set h.fecha_baja = to_date('16092022','ddmmyyyy')
where h.convenio = i.convenio
and h.fecha_baja is null;
begin
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 1,i.tarifa1, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'1',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 2,i.tarifa2, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)

VALUES ('ESTCORE-6625',2,i.convenio||'--'||'2',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 3,i.tarifa3, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');

exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'3',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 4,i.tarifa4, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');

exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'4',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 5,i.tarifa5, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');

exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'5',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 6,i.tarifa6, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');

exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'6',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 7,i.tarifa7, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');

exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'7',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values

(266, i.convenio, 8,i.tarifa8, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');

exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'8',SYSDATE,NULL);
end;
BEGIN
insert into sim_convenio_comision
(id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig,
usuario_creacion)
values
(266, i.convenio, 9,i.tarifa9, sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
exception when others then
insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
VALUES ('ESTCORE-6625',2,i.convenio||'--'||'9',SYSDATE,NULL);
end;
end loop;
COMMIT;
end;


SQL

SET SERVEROUTPUT ON SIZE 1000000
SET LINESIZE 2300
SET PAGESIZE 10000
SET HEADING OFF
SET NUMWIDTH 17
SET FEEDBACK OFF

DEFINE Ruta=&1;
SPOOL &ruta;

insert into c9999040 (USUARIO, NUM_SECU_POL, ORDEN, COLNUM01, COLNUM02, COLNUM03, COLNUM04, COLNUM05, COLNUM06, COLNUM07, COLNUM08, COLNUM09, COLNUM10, COLNUM11, COLNUM12, COLNUM13, COLNUM14, COLNUM15, COLNUM16, COLNUM17, COLNUM18, COLNUM19, COLNUM20, COLCAR01, COLCAR02, COLCAR03, COLCAR04, COLCAR05, COLCAR06, COLCAR07, COLCAR08, COLCAR09, COLCAR10, COLCAR11, COLCAR12, COLCAR13, COLCAR14, COLCAR15, COLCAR16, COLCAR17, COLCAR18, COLCAR19, COLCAR20, COLNUM21, COLNUM22, COLNUM23, COLNUM24, COLNUM25, COLNUM26, COLNUM27, COLNUM28, COLNUM29, COLNUM30)
values ('COMIS5SOAT', null, 1638891017, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38891', '16', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

COMMIT;
/
DECLARE
cursor c1 is 
select   orden  convenio,
 COLNUM01 tarifa1 ,
 COLNUM02 tarifa2,
 COLNUM03 tarifa3,
 COLNUM04 tarifa4,
 COLNUM05 tarifa5 ,
 COLNUM06 tarifa6,
 COLNUM07 tarifa7,
 COLNUM08 tarifa8,
 COLNUM09 tarifa9,
 COLCAR10 diascartera,
 COLCAR11 montocartera
from c9999040 
where  usuario = 'COMIS5SOAT'  ;   
begin
  for i in c1 loop
    update  sim_convenio_seguros u set u.dias_cartera = i.diascartera,
	                                   u.monto_max_cartera = i.montocartera
    where h.convenio = i.convenio;
    update  sim_convenio_comision h set h.fecha_baja = to_date('16092022','ddmmyyyy')
    where h.convenio = i.convenio
    and h.fecha_baja is null;	
    begin                  
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 1,i.tarifa1,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'1',SYSDATE,NULL);
    end;  
	BEGIN
     insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 2,i.tarifa2,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
    	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'2',SYSDATE,NULL);
    end;  
    BEGIN	 
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 3,i.tarifa3,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'3',SYSDATE,NULL);
    end; 
    BEGIN 
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 4,i.tarifa4,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'4',SYSDATE,NULL);
    end; 
    BEGIN  
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 5,i.tarifa5,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'5',SYSDATE,NULL);
    end; 
     BEGIN 
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 6,i.tarifa6,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'6',SYSDATE,NULL);
    end; 
     BEGIN 
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 7,i.tarifa7,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'7',SYSDATE,NULL);
    end; 
     BEGIN 
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 8,i.tarifa8,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'8',SYSDATE,NULL);
    end; 
    BEGIN  
    insert into sim_convenio_comision
      (id_producto, convenio, cod_grupo, porc_comision, fecha_equipo, fecha_baja, fecha_vig, usuario_creacion)
    values
      (266, i.convenio, 9,i.tarifa9,  sysdate, null, to_date('17092022','ddmmyyyy'), '52347976');
	  exception when others then 
	  insert into c9999908 (COD_USR,NUM_REG,CADENA,FECHA_EQUIPO,SIM_SECUENCIA)
      VALUES ('ESTCORE-6625',2,i.convenio||'--'||'9',SYSDATE,NULL);
    end; 	
  end loop;
  COMMIT;	  
end; 

/
select *FROM c9999908 WHERE COD_USR = 'ESTCORE-6625';
select  *  from sim_convenio_comision where fecha_baja = '01-ene-2022'
/
SPOOL OFF
PAUSE Presione una tecla para terminar ejecucion
EXIT
 
