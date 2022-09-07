DECLARE
    -- Non-scalar parameters require additional processing 
    ip_poliza           ops$puma.sim_typ_polizagen;
    op_poliza           ops$puma.sim_typ_polizagen;
    ip_proceso          ops$puma.sim_typ_proceso;
    op_arrerrores       ops$puma.sim_typ_array_error;
    op_resultado        NUMBER := 0;
    ip_tipoproceso      NUMBER := 1;
    ip_validacion       VARCHAR2(1) := 'S';
    ip_session_language VARCHAR2(200) := 'ALTER session SET nls_language = ''AMERICAN''';
    ip_session_decimals VARCHAR2(200) := 'ALTER session SET nls_numeric_characters = ''.,''';
    l_xml_pol           xmltype;
    l_xml_proc          xmltype;

BEGIN
    EXECUTE IMMEDIATE ip_session_language;
    EXECUTE IMMEDIATE ip_session_decimals;

    ip_poliza     := NEW sim_typ_polizagen();
    op_poliza     := NEW sim_typ_polizagen();
    ip_proceso    := NEW sim_typ_proceso();
    op_arrerrores := NEW sim_typ_array_error();
    BEGIN
        SELECT xmltype(slw.objeto_entrada)
              ,xmltype(slw.tipo_proceso)
          INTO l_xml_pol
              ,l_xml_proc
          FROM sim_log_webservices slw
         WHERE id_simlogws = 39393644;
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line(SQLERRM);
    END;

    BEGIN
        l_xml_proc.toobject(ip_proceso);
        l_xml_pol.toobject(ip_poliza);
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line(SQLERRM);
    END;
    ops$puma.sim_pck_proceso_datos_emision2.proc_serviceexpide(ip_poliza      => ip_poliza
                                                              ,ip_tipoproceso => ip_tipoproceso
                                                              ,op_poliza      => op_poliza
                                                              ,ip_validacion  => ip_validacion
                                                              ,ip_proceso     => ip_proceso
                                                              ,op_resultado   => op_resultado
                                                              ,op_arrerrores  => op_arrerrores);

    IF op_resultado = -1 THEN
        OPEN :arr_e FOR
            SELECT *
              FROM TABLE(op_arrerrores);
    END IF;
END;
