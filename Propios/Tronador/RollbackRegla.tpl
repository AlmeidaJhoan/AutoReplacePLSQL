DECLARE
    c_regla CONSTANT VARCHAR2(100) DEFAULT '315PTV003';

    PROCEDURE proc_restaurar_regla(ip_regla VARCHAR2) IS
        rec_c creglas%ROWTYPE;
    BEGIN
        --
        FOR rec_bkp IN (SELECT *
                          FROM creglas_rollbkp
                         WHERE cdreg = ip_regla)
        LOOP
            --
            rec_c.cdreg        := rec_bkp.cdreg;
            rec_c.cuenta_filas := rec_bkp.cuenta_filas;
            rec_c.dsabort      := rec_bkp.dsabort;
            rec_c.dsambito     := rec_bkp.dsambito;
            rec_c.dscampo_ref  := rec_bkp.dscampo_ref;
            rec_c.dscobertura  := rec_bkp.dscobertura;
            rec_c.dsc1         := rec_bkp.dsc1;
            rec_c.dsc10        := rec_bkp.dsc10;
            rec_c.dsc11        := rec_bkp.dsc11;
            rec_c.dsc12        := rec_bkp.dsc12;
            rec_c.dsc13        := rec_bkp.dsc13;
            rec_c.dsc14        := rec_bkp.dsc14;
            rec_c.dsc15        := rec_bkp.dsc15;
            rec_c.dsc16        := rec_bkp.dsc16;
            rec_c.dsc17        := rec_bkp.dsc17;
            rec_c.dsc18        := rec_bkp.dsc18;
            rec_c.dsc19        := rec_bkp.dsc19;
            rec_c.dsc2         := rec_bkp.dsc2;
            rec_c.dsc20        := rec_bkp.dsc20;
            rec_c.dsc21        := rec_bkp.dsc21;
            rec_c.dsc22        := rec_bkp.dsc22;
            rec_c.dsc23        := rec_bkp.dsc23;
            rec_c.dsc24        := rec_bkp.dsc24;
            rec_c.dsc3         := rec_bkp.dsc3;
            rec_c.dsc4         := rec_bkp.dsc4;
            rec_c.dsc5         := rec_bkp.dsc5;
            rec_c.dsc6         := rec_bkp.dsc6;
            rec_c.dsc7         := rec_bkp.dsc7;
            rec_c.dsc8         := rec_bkp.dsc8;
            rec_c.dsc9         := rec_bkp.dsc9;
            rec_c.dsdescri     := rec_bkp.dsdescri;
            rec_c.dserror      := rec_bkp.dserror;
            rec_c.dsfailur     := rec_bkp.dsfailur;
            rec_c.dsfecha_crea := rec_bkp.dsfecha_crea;
            rec_c.dsfecha_mod  := rec_bkp.dsfecha_mod;
            rec_c.dsnivel      := rec_bkp.dsnivel;
            rec_c.dsramo       := rec_bkp.dsramo;
            rec_c.dsr1         := rec_bkp.dsr1;
            rec_c.dsr2         := rec_bkp.dsr2;
            rec_c.dssel1       := rec_bkp.dssel1;
            rec_c.dssel10      := rec_bkp.dssel10;
            rec_c.dssel11      := rec_bkp.dssel11;
            rec_c.dssel12      := rec_bkp.dssel12;
            rec_c.dssel13      := rec_bkp.dssel13;
            rec_c.dssel14      := rec_bkp.dssel14;
            rec_c.dssel15      := rec_bkp.dssel15;
            rec_c.dssel16      := rec_bkp.dssel16;
            rec_c.dssel17      := rec_bkp.dssel17;
            rec_c.dssel18      := rec_bkp.dssel18;
            rec_c.dssel19      := rec_bkp.dssel19;
            rec_c.dssel2       := rec_bkp.dssel2;
            rec_c.dssel20      := rec_bkp.dssel20;
            rec_c.dssel21      := rec_bkp.dssel21;
            rec_c.dssel22      := rec_bkp.dssel22;
            rec_c.dssel23      := rec_bkp.dssel23;
            rec_c.dssel24      := rec_bkp.dssel24;
            rec_c.dssel25      := rec_bkp.dssel25;
            rec_c.dssel26      := rec_bkp.dssel26;
            rec_c.dssel27      := rec_bkp.dssel27;
            rec_c.dssel28      := rec_bkp.dssel28;
            rec_c.dssel29      := rec_bkp.dssel29;
            rec_c.dssel3       := rec_bkp.dssel3;
            rec_c.dssel30      := rec_bkp.dssel30;
            rec_c.dssel31      := rec_bkp.dssel31;
            rec_c.dssel32      := rec_bkp.dssel32;
            rec_c.dssel33      := rec_bkp.dssel33;
            rec_c.dssel34      := rec_bkp.dssel34;
            rec_c.dssel35      := rec_bkp.dssel35;
            rec_c.dssel36      := rec_bkp.dssel36;
            rec_c.dssel4       := rec_bkp.dssel4;
            rec_c.dssel5       := rec_bkp.dssel5;
            rec_c.dssel6       := rec_bkp.dssel6;
            rec_c.dssel7       := rec_bkp.dssel7;
            rec_c.dssel8       := rec_bkp.dssel8;
            rec_c.dssel9       := rec_bkp.dssel9;
            rec_c.dssistema    := rec_bkp.dssistema;
            rec_c.dssucces     := rec_bkp.dssucces;
            rec_c.dstipo_reg   := rec_bkp.dstipo_reg;
            rec_c.dsuser       := rec_bkp.dsuser;
            rec_c.hace_commit  := rec_bkp.hace_commit;
            rec_c.tipo_regla   := rec_bkp.tipo_regla;
            rec_c.ver_regla    := rec_bkp.ver_regla;
            --excluidos por ser CLOB y reaclculados por la compilación del AD
            rec_c.procedimiento_generado := NULL; --rec_bkp.PROCEDIMIENTO_GENERADO;
            rec_c.error_compilacion      := NULL; --rec_bkp.ERROR_COMPILACION;
            rec_c.regla_completa         := NULL; --rec_bkp.REGLA_COMPLETA;
        --
        END LOOP;
        --
        UPDATE creglas
           SET ROW = rec_c
         WHERE cdreg = ip_regla;
        COMMIT;
        --
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END proc_restaurar_regla;

BEGIN
    proc_restaurar_regla(c_regla);
END;
/
