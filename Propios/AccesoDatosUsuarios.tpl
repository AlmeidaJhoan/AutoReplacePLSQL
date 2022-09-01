--ACCESO DATOS PRODUCCION USUARIOS
SELECT a.* FROM sim_accesos_datos a WHERE a.codigo_usuario IN ('12345680');
SELECT a.* FROM sim_procesos a WHERE a.id_proceso IN (6000,2000,501,500);
SELECT a.* FROM sim_productos a WHERE a.id_producto = 266;

SELECT a.* FROM sim_usuarios_convenios a WHERE a.usuario_hab IN ('1049795921','1057573839','52957425','1014194006','1020807313','1233688061');
SELECT a.* FROM sim_convenio_seguros a WHERE a.nro_propietario IN ('1049795921','1057573839','52957425','1014194006','1020807313','1233688061');
SELECT a.* FROM usuario a WHERE a.codigo_usuario IN ('1049795921','1057573839','52957425','1014194006','1020807313','1233688061');
