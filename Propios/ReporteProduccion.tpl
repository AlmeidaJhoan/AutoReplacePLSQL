SELECT *
  FROM sim_log_fasesiis_soat a
 WHERE a.num_secu_pol = 29767964114
   AND a.num_end = 0
/

DECLARE
    v_cont NUMBER := 0;

BEGIN

    UPDATE sim_log_fasesiis_soat a
   SET a.response = NULL
 WHERE a.num_secu_pol = 29767964114
   AND a.num_end = 0;
    v_cont := v_cont + SQL%ROWCOUNT;
	
    dbms_output.put_line('Numero de líneas procesadas: ' || v_cont);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Problema detectado >>' || SQLERRM);
END;
/


SELECT *
  FROM sim_log_fasesiis_soat a
 WHERE a.num_secu_pol = 29767964114
   AND a.num_end = 0
/
