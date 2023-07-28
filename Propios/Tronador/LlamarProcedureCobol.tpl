-- Llamar al procedimiento desde una sentencia SQL
DECLARE
  ip_num_secupol NUMBER := 39745177426;
  ip_cod_cob NUMBER := 816;
  op_limite NUMBER;
  op_porcentaje NUMBER;
BEGIN
  sim_pck_emis_soat.prc_tarifa_cobertura(ip_num_secupol, ip_cod_cob, op_limite, op_porcentaje);
  
  -- Mostrar los resultados obtenidos
  DBMS_OUTPUT.PUT_LINE('Resultado 1: ' || op_limite);
  DBMS_OUTPUT.PUT_LINE('Resultado 2: ' || op_porcentaje);
END;
/
