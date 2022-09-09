declare
    IP_POLIZA      OPS$PUMA.SIM_TYP_POLIZAGEN := null;
    IP_TIPOPROCESO Number                     := 0;
    OP_POLIZA      OPS$PUMA.SIM_TYP_POLIZAGEN;
    IP_VALIDACION  Varchar2(4000)             := '';
    IP_PROCESO     OPS$PUMA.SIM_TYP_PROCESO   := null;
    OP_RESULTADO   Number;
    OP_ARRERRORES  OPS$PUMA.SIM_TYP_ARRAY_ERROR;
    TERCEROS       OPS$PUMA.SIM_TYP_TERCEROGEN;
    ARRAY_TERCEROS OPS$PUMA.SIM_TYP_ARRAY_TERCEROGEN;
    DATOS_FIJOS    OPS$PUMA.SIM_TYP_DATOSFIJOS;
    AGENTES        OPS$PUMA.SIM_TYP_AGENTEPOLIZA;
    ARRAY_AGENTES  OPS$PUMA.SIM_TYP_ARRAY_AGENTESPOL;
    ARRAY_DV SIM_TYP_ARRAY_DV_GEN := SIM_TYP_ARRAY_DV_GEN(
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'DIRECC_ADMO', null, null, null, 'CL 165 # 54 C 84 MZ 2 CS 21', null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'TIPO_DOC_ASEG', null, null, null, 'CC', null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'COD_ASEG1', null, null, null, '1110001', null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'COD_ASEG', null, null, null, '1110001', null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'PORC_CREDIBILI', null, null, null, null, null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'ES_PROPIETARIO', null, null, null, null, null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'NOM_ASEG1', null, null, null, 'LEONOR', null),
                                         SIM_TYP_DATOS_VARIABLESGEN(null, null, 0, 'TEL_ASEG1', null, null, null, '1111111', null)
                                     );
    ARRAY_ADICIONALES SIM_TYP_ARRAY_DATOS_ADIC   := SIM_TYP_ARRAY_DATOS_ADIC(SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'AGENCIA_EXPEDICION', null, 'SIM_ENTREGASOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CEL_ENTREGA', null, 'SIM_ENTREGASOAT', '3103000000'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CIU_ASEGURADO', null, 'SIM_ENTREGASOAT', '14000'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CIU_ENTREGA', null, 'SIM_ENTREGASOAT', '14000'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_PAIS', null, 'SIM_ENTREGASOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_PROVEEDOR', null, 'SIM_ENTREGASOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'DIR_ASEGURADO', null, 'SIM_ENTREGASOAT', 'CL 165 # 54 C 84 MZ 2 CS 21'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'DIR_ENTREGA', null, 'SIM_ENTREGASOAT', 'CRA 0 CLL 0'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'ESTADO', null, 'SIM_ENTREGASOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_CREACION', null, 'SIM_ENTREGASOAT', '15072022'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_ESTADO', null, 'SIM_ENTREGASOAT', '15072022'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_EXPED', null, 'SIM_ENTREGASOAT', '15072022'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NOM_ASEGURADO', null, 'SIM_ENTREGASOAT', 'LEONOR'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NOM_ENTREGA', null, 'SIM_ENTREGASOAT', 'LEONOR'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NRO_DOCUMTO', null, 'SIM_ENTREGASOAT', '51718313'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'PAT_VEH', null, 'SIM_ENTREGASOAT', 'HFU725'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'TDOC_TERCERO', null, 'SIM_ENTREGASOAT', 'CC'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'TEL_ASEGURADO', null, 'SIM_ENTREGASOAT', '1111111'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'TEL_ENTREGA', null, 'SIM_ENTREGASOAT', '7000000000'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USUARIO_CREACION', null, 'SIM_ENTREGASOAT', '1234554321'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CAPACIDAD', null, 'SIM_X_DATOSSOAT', '0.5'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CHASIS_VEH', null, 'SIM_X_DATOSSOAT', '8LDBSE44980007951'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CILINDRAJE', null, 'SIM_X_DATOSSOAT', '1590'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CLASE', null, 'SIM_X_DATOSSOAT', '6'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'CLASE_RUNT', null, 'SIM_X_DATOSSOAT', '6'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_PAIS', null, 'SIM_X_DATOSSOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'COD_RAMO_VEH', null, 'SIM_X_DATOSSOAT', '722'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'ESTADO_IMPRESION', null, 'SIM_X_DATOSSOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_CREACION', null, 'SIM_X_DATOSSOAT', '15072022'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'FECHA_EXPEDICION', null, 'SIM_X_DATOSSOAT', '15072022'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'LINEA', null, 'SIM_X_DATOSSOAT', '263'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MAIL_ENVIO', null, 'SIM_X_DATOSSOAT', 'wilson.sacristan@segurosbolivar.com'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_ENTREGADO', null, 'SIM_X_DATOSSOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_ENVIO_RUNT', null, 'SIM_X_DATOSSOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_IMPRESO', null, 'SIM_X_DATOSSOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MARCA_RUNT', null, 'SIM_X_DATOSSOAT', '1'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MODELO', null, 'SIM_X_DATOSSOAT', '2008'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'MOTOR_VEH', null, 'SIM_X_DATOSSOAT', 'G16B708065'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'NRO_PASAJEROS', null, 'SIM_X_DATOSSOAT', '3'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'PAT_VEH', null, 'SIM_X_DATOSSOAT', 'HFU725'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'SECUENCIA', null, 'SIM_X_DATOSSOAT', '0'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'SERVICIO', null, 'SIM_X_DATOSSOAT', '2'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USO', null, 'SIM_X_DATOSSOAT', null),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USUARIO_CREACION', null, 'SIM_X_DATOSSOAT', '1234554321'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'USUARIO_EXPEDICION', null, 'SIM_X_DATOSSOAT', '1234554321'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'VALOR_FONSAT', null, 'SIM_X_DATOSSOAT', '57098'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'VALOR_FPV', null, 'SIM_X_DATOSSOAT', '12063'),
                                                                             SIM_TYP_DATOS_ADIC(null, 0, 1, null, 1, 'VIN', null, 'SIM_X_DATOSSOAT', ''));
begin
    IP_POLIZA := New SIM_TYP_POLIZAGEN();
    --     DBMS_OUTPUT.PUT_LINE('Before initialization, the varray is null.');
    IP_PROCESO := SIM_TYP_PROCESO('2', 241, 240, 3, 310, 315, null, '1234554321', null,
                                  1, 3, 9, 1, '10.1.103.2', '1.0', null, null, null, null, null);

    --Llenado de terceros
    TERCEROS := SIM_TYP_TERCEROGEN('CC', 1110001, null, null, 6, 'LEONOR', 'PICO MORENO', null, null, null, TO_TIMESTAMP('980-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, 'M', 'CL 165 # 54 C 84 MZ 2 CS 21', SIM_TYP_LOOKUP(null, '14000'), null, '1111111', null, '3107647810', 'GENERICO@GENERICO.COM', null);
    ARRAY_TERCEROS := New SIM_TYP_ARRAY_TERCEROGEN();
    ARRAY_TERCEROS.extend;
    ARRAY_TERCEROS(ARRAY_TERCEROS.COUNT) := TERCEROS;
    IP_POLIZA.DATOSTERCEROS := ARRAY_TERCEROS;

    --Llenado de datos fijos
    DATOS_FIJOS := SIM_TYP_DATOSFIJOS(
        SIM_TYP_LOOKUP('3',null),
        SIM_TYP_LOOKUP('310',null),
        null,
        null,
        null,
        TO_TIMESTAMP('2019-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        null,
        SIM_TYP_LOOKUP('77995',null),
        null,
        null,
        SIM_TYP_LOOKUP('51718313',null),
        SIM_TYP_LOOKUP('315',null),
        null, null, null, null, null, null, null, null,
        null, null, null, null, null,
        SIM_TYP_LOOKUP('12',null),
        SIM_TYP_LOOKUP('CC',null),
        null, null,
        SIM_TYP_LOOKUP('CC',null),
        null, null, null, null, null, 1577995000, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null);
    IP_POLIZA.DATOSFIJOS := DATOS_FIJOS;

    --Llenado de agentes
    AGENTES := SIM_TYP_AGENTEPOLIZA(null, null, SIM_TYP_LOOKUP('77995', null), null, '', 266, 100, 'S', null, null, null, null, null, null);
    ARRAY_AGENTES := New SIM_TYP_ARRAY_AGENTESPOL();
    ARRAY_AGENTES.extend;
    ARRAY_AGENTES(ARRAY_AGENTES.COUNT) := AGENTES;
    IP_POLIZA.AGENTES := ARRAY_AGENTES;


    --Llenado datos variables
    IP_POLIZA.DV_POLIZA := ARRAY_DV;

    --Llenado datos adicionales
    IP_POLIZA.DATOSADICIONAL := ARRAY_ADICIONALES;



      SIM_PCK_PROCESO_DATOS_EMISION2.Proc_Serviceexpide(ip_poliza => ip_poliza,
                                              ip_tipoproceso => :ip_tipoproceso,
                                              op_poliza => op_poliza,
                                              ip_validacion => :ip_validacion,
                                              ip_proceso => ip_proceso,
                                              op_resultado => :op_resultado,
                                              op_arrerrores => op_arrerrores);
                                              
                                              IF op_resultado = -1 THEN
        OPEN :arr_e FOR
            SELECT *
              FROM TABLE(op_arrerrores);
    END IF;
end;
