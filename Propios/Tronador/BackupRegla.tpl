DECLARE
    c_regla CONSTANT VARCHAR2(100) DEFAULT '315PTV003';
    PROCEDURE proc_backup_regla(ip_regla VARCHAR2) IS
        rec_bkp creglas_rollbkp%ROWTYPE;
    BEGIN
        --borrar la regla si ya esta
        DELETE FROM creglas_rollbkp
         WHERE cdreg = ip_regla;
        -- insertar el cambio
        FOR rec IN (SELECT *
                      FROM creglas
                     WHERE cdreg = ip_regla)
        LOOP
            --
            rec_bkp.cdreg        := rec.cdreg;
            rec_bkp.cuenta_filas := rec.cuenta_filas;
            rec_bkp.dsabort      := rec.dsabort;
            rec_bkp.dsambito     := rec.dsambito;
            rec_bkp.dscampo_ref  := rec.dscampo_ref;
            rec_bkp.dscobertura  := rec.dscobertura;
            rec_bkp.dsc1         := rec.dsc1;
            rec_bkp.dsc10        := rec.dsc10;
            rec_bkp.dsc11        := rec.dsc11;
            rec_bkp.dsc12        := rec.dsc12;
            rec_bkp.dsc13        := rec.dsc13;
            rec_bkp.dsc14        := rec.dsc14;
            rec_bkp.dsc15        := rec.dsc15;
            rec_bkp.dsc16        := rec.dsc16;
            rec_bkp.dsc17        := rec.dsc17;
            rec_bkp.dsc18        := rec.dsc18;
            rec_bkp.dsc19        := rec.dsc19;
            rec_bkp.dsc2         := rec.dsc2;
            rec_bkp.dsc20        := rec.dsc20;
            rec_bkp.dsc21        := rec.dsc21;
            rec_bkp.dsc22        := rec.dsc22;
            rec_bkp.dsc23        := rec.dsc23;
            rec_bkp.dsc24        := rec.dsc24;
            rec_bkp.dsc3         := rec.dsc3;
            rec_bkp.dsc4         := rec.dsc4;
            rec_bkp.dsc5         := rec.dsc5;
            rec_bkp.dsc6         := rec.dsc6;
            rec_bkp.dsc7         := rec.dsc7;
            rec_bkp.dsc8         := rec.dsc8;
            rec_bkp.dsc9         := rec.dsc9;
            rec_bkp.dsdescri     := rec.dsdescri;
            rec_bkp.dserror      := rec.dserror;
            rec_bkp.dsfailur     := rec.dsfailur;
            rec_bkp.dsfecha_crea := rec.dsfecha_crea;
            rec_bkp.dsfecha_mod  := rec.dsfecha_mod;
            rec_bkp.dsnivel      := rec.dsnivel;
            rec_bkp.dsramo       := rec.dsramo;
            rec_bkp.dsr1         := rec.dsr1;
            rec_bkp.dsr2         := rec.dsr2;
            rec_bkp.dssel1       := rec.dssel1;
            rec_bkp.dssel10      := rec.dssel10;
            rec_bkp.dssel11      := rec.dssel11;
            rec_bkp.dssel12      := rec.dssel12;
            rec_bkp.dssel13      := rec.dssel13;
            rec_bkp.dssel14      := rec.dssel14;
            rec_bkp.dssel15      := rec.dssel15;
            rec_bkp.dssel16      := rec.dssel16;
            rec_bkp.dssel17      := rec.dssel17;
            rec_bkp.dssel18      := rec.dssel18;
            rec_bkp.dssel19      := rec.dssel19;
            rec_bkp.dssel2       := rec.dssel2;
            rec_bkp.dssel20      := rec.dssel20;
            rec_bkp.dssel21      := rec.dssel21;
            rec_bkp.dssel22      := rec.dssel22;
            rec_bkp.dssel23      := rec.dssel23;
            rec_bkp.dssel24      := rec.dssel24;
            rec_bkp.dssel25      := rec.dssel25;
            rec_bkp.dssel26      := rec.dssel26;
            rec_bkp.dssel27      := rec.dssel27;
            rec_bkp.dssel28      := rec.dssel28;
            rec_bkp.dssel29      := rec.dssel29;
            rec_bkp.dssel3       := rec.dssel3;
            rec_bkp.dssel30      := rec.dssel30;
            rec_bkp.dssel31      := rec.dssel31;
            rec_bkp.dssel32      := rec.dssel32;
            rec_bkp.dssel33      := rec.dssel33;
            rec_bkp.dssel34      := rec.dssel34;
            rec_bkp.dssel35      := rec.dssel35;
            rec_bkp.dssel36      := rec.dssel36;
            rec_bkp.dssel4       := rec.dssel4;
            rec_bkp.dssel5       := rec.dssel5;
            rec_bkp.dssel6       := rec.dssel6;
            rec_bkp.dssel7       := rec.dssel7;
            rec_bkp.dssel8       := rec.dssel8;
            rec_bkp.dssel9       := rec.dssel9;
            rec_bkp.dssistema    := rec.dssistema;
            rec_bkp.dssucces     := rec.dssucces;
            rec_bkp.dstipo_reg   := rec.dstipo_reg;
            rec_bkp.dsuser       := rec.dsuser;
            rec_bkp.hace_commit  := rec.hace_commit;
            rec_bkp.tipo_regla   := rec.tipo_regla;
            rec_bkp.ver_regla    := rec.ver_regla;
            --excluidos por ser CLOB y reaclculados por la compilación del AD
            rec_bkp.procedimiento_generado := NULL; --rec.PROCEDIMIENTO_GENERADO;
            rec_bkp.regla_completa         := NULL; --rec.REGLA_COMPLETA;
            rec_bkp.error_compilacion      := NULL; --rec.ERROR_COMPILACION;
        --
        END LOOP;
        --
        INSERT INTO creglas_rollbkp
        VALUES rec_bkp;
        COMMIT;
        --
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END proc_backup_regla;

BEGIN
    proc_backup_regla(c_regla);
END;
/
