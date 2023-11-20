DECLARE
    ip_poliza ops$puma.sim_typ_polizagen;
    op_poliza ops$puma.sim_typ_polizagen;
    ip_proceso ops$puma.sim_typ_proceso;
    op_arrerrores ops$puma.sim_typ_array_error;

    v_SIM_TYP_TERCEROGEN       OPS$PUMA.SIM_TYP_TERCEROGEN;
    v_SIM_TYP_ARRAY_TERCEROGEN OPS$PUMA.SIM_TYP_ARRAY_TERCEROGEN;
    v_SIM_TYP_DATOSFIJOS    OPS$PUMA.SIM_TYP_DATOSFIJOS;
    v_SIM_TYP_ARRAY_DV_GEN OPS$PUMA.SIM_TYP_ARRAY_DV_GEN;

    v_SIM_TYP_DATOS_ADIC    OPS$PUMA.SIM_TYP_DATOS_ADIC;
    v_SIM_TYP_ARRAY_DATOS_ADIC OPS$PUMA.SIM_TYP_ARRAY_DATOS_ADIC;



--  v_sim_typ_RiesgoGen OPS$PUMA.sim_typ_RiesgoGen;
    v_sim_typ_array_riesgosGen OPS$PUMA.sim_typ_array_riesgosGen;
    v_SIM_TYP_RIESGOGEN  OPS$PUMA.SIM_TYP_RIESGOGEN;
    v_SIM_TYP_ARRAY_DV_GEN_RISK      OPS$PUMA.SIM_TYP_ARRAY_DV_GEN;
    v_Sim_typ_datos_VariablesGen OPS$PUMA.Sim_typ_datos_VariablesGen;

    --ip_session_language VARCHAR2(200) := 'ALTER session SET nls_language = ''AMERICAN''';
    --ip_session_decimals VARCHAR2(200) := 'ALTER session SET nls_numeric_characters = ''.,''';

    op_resultado        NUMBER := 0;
    ip_tipoproceso      NUMBER := 3;
    ip_validacion       VARCHAR2(1) := '0';

BEGIN
    --EXECUTE IMMEDIATE ip_session_language;
    --EXECUTE IMMEDIATE ip_session_decimals;
    ip_poliza     := NEW sim_typ_polizagen();
    op_poliza     := NEW sim_typ_polizagen();
    ip_proceso    := NEW sim_typ_proceso();
    op_arrerrores := NEW sim_typ_array_error();

    v_SIM_TYP_TERCEROGEN      := NEW SIM_TYP_TERCEROGEN();
    v_SIM_TYP_ARRAY_TERCEROGEN   := NEW SIM_TYP_ARRAY_TERCEROGEN();
    v_SIM_TYP_DATOSFIJOS      := NEW SIM_TYP_DATOSFIJOS();
    v_SIM_TYP_ARRAY_DV_GEN        := NEW SIM_TYP_ARRAY_DV_GEN();

    v_SIM_TYP_DATOS_ADIC      := NEW SIM_TYP_DATOS_ADIC();
    v_SIM_TYP_ARRAY_DATOS_ADIC   := NEW SIM_TYP_ARRAY_DATOS_ADIC();


    v_sim_typ_array_riesgosGen    := NEW sim_typ_array_riesgosGen();
    v_SIM_TYP_RIESGOGEN       := NEW SIM_TYP_RIESGOGEN();
    v_SIM_TYP_ARRAY_DV_GEN_RISK    := NEW SIM_TYP_ARRAY_DV_GEN();
    v_Sim_typ_datos_VariablesGen := NEW Sim_typ_datos_VariablesGen();


    BEGIN
        --     DBMS_OUTPUT.PUT_LINE('Before initialization, the varray is null.');
        --IP_PROCESO := SIM_TYP_PROCESO('2', 241, 240, 3, 310, 315, null, '1023877352', null,
           --                     1, 3, 9, 1, '10.1.103.2', '1.0', null, null, null, null, null);

                                                   
                                      ip_proceso := new sim_typ_proceso;
 ip_proceso.p_cod_cia      := 3; 
 ip_proceso.p_cod_secc     := 310; 
 ip_proceso.p_cod_producto := 315; 
 --ip_proceso.p_subproducto := 0; 
 ip_proceso.p_proceso      := 241; 
 ip_proceso.p_subproceso   := 240; 
 ip_proceso.p_cod_usr      := 1023877352;
 ip_proceso.p_agencia_usr      := 1006;
 ip_proceso.p_modulo       := 2; 
 ip_proceso.p_entidad_colocadora := 3;
 ip_proceso.p_canal := 3;
 ip_proceso.p_sistema_origen := 100;
 ip_proceso.p_pais := 1;
 ip_proceso.p_sessionid := '1';
 ip_proceso.p_direccionip := '10.1.1.1';
 ip_proceso.p_info1 := 'MOZILLA';
 ip_proceso.p_info2 := '16659';
 ip_proceso.p_info3 := '48;1';
 ip_proceso.p_info4 := 'E';
 ip_proceso.p_info5 := '52365';
 
        v_SIM_TYP_ARRAY_TERCEROGEN.extend;
        v_SIM_TYP_ARRAY_TERCEROGEN(v_SIM_TYP_ARRAY_TERCEROGEN.Count)  := SIM_TYP_TERCEROGEN('CC', 11188060, null, null, 6, 'HJGVJ USHVOLJ', 'CJJMSLGJ JGVTJ', null, null, null, null, null, null, 'Cll 69a Sur # 104-18, Casa 38,', SIM_TYP_LOOKUP('14000', NULL), null, '3057214856', null, '3057214856', 'JHOAN.ALMEIDA@SEGUROSBOLIVAR.COM', null);
        v_SIM_TYP_ARRAY_TERCEROGEN.extend;
        v_SIM_TYP_ARRAY_TERCEROGEN(v_SIM_TYP_ARRAY_TERCEROGEN.Count)  := SIM_TYP_TERCEROGEN('CC', 11188060, null, null, 1, 'HJGVJ USHVOLJ', 'CJJMSLGJ JGVTJ', null, null, null, null, null, null, 'Cll 69a Sur # 104-18, Casa 38, Bosa el recreo, Conjunto san', SIM_TYP_LOOKUP('14000', NULL), null, '3057214856', null, '3057214856', 'JHOAN.ALMEIDA@SEGUROSBOLIVAR.COM', null);

        IP_POLIZA.DATOSTERCEROS := v_SIM_TYP_ARRAY_TERCEROGEN;


        --Llenado de datos fijos
        v_SIM_TYP_DATOSFIJOS := SIM_TYP_DATOSFIJOS(
                SIM_TYP_LOOKUP('3',null),
                SIM_TYP_LOOKUP('310',null),
                null,
                null,
                null,
                to_DATE('20-11-2023', 'DD-MM-YYYY'),
                to_date('19-11-2024', 'DD-MM-YYYY'),
                SIM_TYP_LOOKUP('52365',null),
                null,
                null,
                SIM_TYP_LOOKUP('11188060',null),
                SIM_TYP_LOOKUP('315',null),
                null, null, null, null, null, null, null, null,
                null, null, null, null, null,
                SIM_TYP_LOOKUP('12',null),
                SIM_TYP_LOOKUP('CC',null),
                null, null,
                SIM_TYP_LOOKUP('CC',null),
                null, null, null, null, null, 1552365004, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, NULL, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, NULL); --24

        IP_POLIZA.DATOSFIJOS := v_SIM_TYP_DATOSFIJOS;

        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'DIRECC_ADMO', null, null, null, 'Cll 69a Sur # 104-18, Casa 38', null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'TIPO_DOC_ASEG', null, null, null, 'CC', null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'NOMB_EMPRESA', null, null, null, null, null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'TEL_ASEG1', null, null, null, '3057214856', null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'NOM_ASEG1', null, null, null, 'HJGVJ USHVOLJ CJJMSLGJ JGVTJ', null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'COD_ASEG1', null, null, null, 11188060, null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'COD_ASEG', null, null, null, '11188060', null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'PORC_CREDIBILI', null, null, null, null, null);
        v_SIM_TYP_ARRAY_DV_GEN.extend;
        v_SIM_TYP_ARRAY_DV_GEN(v_SIM_TYP_ARRAY_DV_GEN.Count)  := SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'ES_PROPIETARIO', null, null, null, null, null);


        IP_POLIZA.DV_POLIZA := v_SIM_TYP_ARRAY_DV_GEN;

        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'AGENCIA_EXPEDICION', null, 'SIM_ENTREGASOAT', 8331);
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CEL_ENTREGA', null, 'SIM_ENTREGASOAT', '3057214856');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CIU_ASEGURADO', null, 'SIM_ENTREGASOAT', '14000');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CIU_ENTREGA', null, 'SIM_ENTREGASOAT', '14000');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_PAIS', null, 'SIM_ENTREGASOAT', '90');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_PROVEEDOR', null, 'SIM_ENTREGASOAT', '50');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'DIR_ASEGURADO', null, 'SIM_ENTREGASOAT', 'Cll 69a Sur # 104-18, Casa 38, Bosa el recreo, Conjunto san');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'DIR_ENTREGA', null, 'SIM_ENTREGASOAT', 'Cll 69a Sur # 104-18, Casa 38, Bosa el recreo, Conjunto san');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'ESTADO', null, 'SIM_ENTREGASOAT', 'PND');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_CREACION', null, 'SIM_ENTREGASOAT', '20112023');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_ESTADO', null, 'SIM_ENTREGASOAT', '20112023');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_EXPED', null, 'SIM_ENTREGASOAT', '20112023');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NOM_ASEGURADO', null, 'SIM_ENTREGASOAT', 'HJGVJ USHVOLJ CJJMSLGJ JGVTJ');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NOM_ENTREGA', null, 'SIM_ENTREGASOAT', 'HJGVJ USHVOLJ CJJMSLGJ JGVTJ');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NRO_DOCUMTO', null, 'SIM_ENTREGASOAT', '11188060');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'PAT_VEH', null, 'SIM_ENTREGASOAT', 'WFH276');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'TDOC_TERCERO', null, 'SIM_ENTREGASOAT', 'CC');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'TEL_ASEGURADO', null, 'SIM_ENTREGASOAT', '3057214856');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'TEL_ENTREGA', null, 'SIM_ENTREGASOAT', '3057214856');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USUARIO_CREACION', null, 'SIM_ENTREGASOAT', '1023877352');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'AGENCIA_EXPEDICION', null, 'SIM_X_DATOSSOAT', '1006');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CAPACIDAD', null, 'SIM_X_DATOSSOAT', '1.24');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CHASIS_VEH', null, 'SIM_X_DATOSSOAT', '9GDNLR550FB036836');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CILINDRAJE', null, 'SIM_X_DATOSSOAT', '2771');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CLASE', null, 'SIM_X_DATOSSOAT', '5');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CLASE_RUNT', null, 'SIM_X_DATOSSOAT', '5');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_PAIS', null, 'SIM_X_DATOSSOAT', '90');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_RAMO_VEH', null, 'SIM_X_DATOSSOAT', '310');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'ESTADO_IMPRESION', null, 'SIM_X_DATOSSOAT', 'PND');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_CREACION', null, 'SIM_X_DATOSSOAT', '20112023');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_EXPEDICION', null, 'SIM_X_DATOSSOAT', '20112023');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'ID_RUNT', null, 'SIM_X_DATOSSOAT', '178868498');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'LINEA', null, 'SIM_X_DATOSSOAT', '252');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MAIL_ENVIO', null, 'SIM_X_DATOSSOAT', 'JHOAN.ALMEIDA@SEGUROSBOLIVAR.COM');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA', null, 'SIM_X_DATOSSOAT', '1');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_ENTREGADO', null, 'SIM_X_DATOSSOAT', 'N');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_ENVIO_RUNT', null, 'SIM_X_DATOSSOAT', 'N');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_IMPRESO', null, 'SIM_X_DATOSSOAT', 'N');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_RUNT', null, 'SIM_X_DATOSSOAT', '1');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MODELO', null, 'SIM_X_DATOSSOAT', '2015');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MOTOR_VEH', null, 'SIM_X_DATOSSOAT', '1P6390');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NRO_PASAJEROS', null, 'SIM_X_DATOSSOAT', '2');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'OPER_NAL', null, 'SIM_X_DATOSSOAT', 'N');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'PAT_VEH', null, 'SIM_X_DATOSSOAT', 'WFH276');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'SECUENCIA', null, 'SIM_X_DATOSSOAT', '57454');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'SERVICIO', null, 'SIM_X_DATOSSOAT', '2');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USO', null, 'SIM_X_DATOSSOAT', '0');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USUARIO_CREACION', null, 'SIM_X_DATOSSOAT', '1023877352');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USUARIO_EXPEDICION', null, 'SIM_X_DATOSSOAT', '1023877352');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'VALOR_FONSAT', null, 'SIM_X_DATOSSOAT', '51015');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'VALOR_FPV', null, 'SIM_X_DATOSSOAT', '16110');
        v_SIM_TYP_ARRAY_DATOS_ADIC.extend;
        v_SIM_TYP_ARRAY_DATOS_ADIC(v_SIM_TYP_ARRAY_DATOS_ADIC.Count)  := SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'VIN', null, 'SIM_X_DATOSSOAT', '9GDNLR550FB036836');


        IP_POLIZA.DATOSADICIONAL := v_SIM_TYP_ARRAY_DATOS_ADIC;





        v_Sim_typ_datos_VariablesGen := SIM_TYP_DATOS_VARIABLESGEN(null, 1, 0, 'CPOS_RIES',null,null,'14000',null,null);
        v_SIM_TYP_ARRAY_DV_GEN_RISK.extend;
        v_SIM_TYP_ARRAY_DV_GEN_RISK(v_SIM_TYP_ARRAY_DV_GEN_RISK.Count) := v_Sim_typ_datos_VariablesGen;

        v_Sim_typ_datos_VariablesGen := SIM_TYP_DATOS_VARIABLESGEN(null, 1, 0, 'COD_PROV',null,null,'000',null,null);
        v_SIM_TYP_ARRAY_DV_GEN_RISK.extend;
        v_SIM_TYP_ARRAY_DV_GEN_RISK(v_SIM_TYP_ARRAY_DV_GEN_RISK.Count) := v_Sim_typ_datos_VariablesGen;

        v_Sim_typ_datos_VariablesGen := SIM_TYP_DATOS_VARIABLESGEN(null, 1, 0, 'DESC_RIES',null,null,'WFH276',null,null);
        v_SIM_TYP_ARRAY_DV_GEN_RISK.extend;
        v_SIM_TYP_ARRAY_DV_GEN_RISK(v_SIM_TYP_ARRAY_DV_GEN_RISK.Count) := v_Sim_typ_datos_VariablesGen;

        v_Sim_typ_datos_VariablesGen := SIM_TYP_DATOS_VARIABLESGEN(null, 1, 0, 'DIRECC_RIES',null,null,'Cll 69a Sur # 104-18',null,null);
        v_SIM_TYP_ARRAY_DV_GEN_RISK.extend;
        v_SIM_TYP_ARRAY_DV_GEN_RISK(v_SIM_TYP_ARRAY_DV_GEN_RISK.Count) := v_Sim_typ_datos_VariablesGen;


        v_SIM_TYP_RIESGOGEN.DatosVariables   := v_SIM_TYP_ARRAY_DV_GEN_RISK;

        v_sim_typ_array_riesgosGen.extend;
        v_sim_typ_array_riesgosGen(v_sim_typ_array_riesgosGen.Count) := v_SIM_TYP_RIESGOGEN;


        IP_POLIZA.DatosRiesgos := v_sim_typ_array_riesgosGen;

    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line(SQLERRM);
    END;


    OPS$PUMA.SIM_PCK_ACCESO_SERVICIOS.PROC_SERVICEEXPIDE(
            IP_POLIZA => IP_POLIZA,
            IP_TIPOPROCESO => IP_TIPOPROCESO,
            OP_POLIZA => OP_POLIZA,
            IP_VALIDACION => IP_VALIDACION,
            IP_PROCESO => IP_PROCESO,
            OP_RESULTADO => OP_RESULTADO,
            OP_ARRERRORES => OP_ARRERRORES
        );
        
    IF op_resultado = -1 THEN
        OPEN :arr_e FOR
            SELECT *
              FROM TABLE(op_arrerrores);
    END IF;
end;
