SELECT *
  FROM sim_convenio_seguros a
 WHERE a.convenio IN (SELECT x.convenio
                        FROM sim_usuarios_convenios x
                       WHERE x.usuario_hab IN ('1075280985'));

SELECT '*' || a.usuario_hab || '*'
      ,a.*
  FROM sim_usuarios_convenios a
 WHERE usuario_hab IN ('1075280985');

SELECT '*' || a.usuario_hab || '*'
      ,a.*
  FROM sim_usuarios_convenios a
 WHERE usuario_hab LIKE '%1075280985%';

SELECT *
  FROM sim_externo_usuario
 WHERE num_doc_usuario IN ('1075280985');

SELECT *
  FROM sim_usuarios_delegados
 WHERE usuario_delegado IN ('1075280985');

SELECT *
  FROM usuario
 WHERE codigo_usuario IN ('1075280985');

SELECT *
  FROM sim_accesos_datos
 WHERE codigo_usuario IN ('1075280985')
 ORDER BY codigo_usuario
         ,id_producto
/

DECLARE
    v_cont NUMBER := 0;
BEGIN
    dbms_output.put_line('Inicia borrado usuario');

    DELETE FROM sim_externo_usuario
     WHERE num_doc_usuario IN ('1075280985');
    v_cont := v_cont + SQL%ROWCOUNT;

    DELETE FROM sim_usuarios_delegados
     WHERE usuario_delegado IN ('1075280985');
    v_cont := v_cont + SQL%ROWCOUNT;

    DELETE FROM sim_accesos_datos
     WHERE codigo_usuario IN ('1075280985');
    v_cont := v_cont + SQL%ROWCOUNT;

    DELETE FROM usuario
     WHERE codigo_usuario IN ('1075280985');
    v_cont := v_cont + SQL%ROWCOUNT;

    dbms_output.put_line('Numero de líneas procesadas: ' || v_cont);

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Problema detectado >>' || SQLERRM);
END;
/

SELECT *
  FROM sim_convenio_seguros a
 WHERE a.convenio IN (SELECT x.convenio
                        FROM sim_usuarios_convenios x
                       WHERE x.usuario_hab IN ('1075280985'));

SELECT '*' || a.usuario_hab || '*'
      ,a.*
  FROM sim_usuarios_convenios a
 WHERE usuario_hab IN ('1075280985');

SELECT '*' || a.usuario_hab || '*'
      ,a.*
  FROM sim_usuarios_convenios a
 WHERE usuario_hab LIKE '%1075280985%';

SELECT *
  FROM sim_externo_usuario
 WHERE num_doc_usuario IN ('1075280985');

SELECT *
  FROM sim_usuarios_delegados
 WHERE usuario_delegado IN ('1075280985');

SELECT *
  FROM usuario
 WHERE codigo_usuario IN ('1075280985');

SELECT *
  FROM sim_accesos_datos
 WHERE codigo_usuario IN ('1075280985')
 ORDER BY codigo_usuario
         ,id_producto
/