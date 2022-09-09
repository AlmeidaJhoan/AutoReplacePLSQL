DECLARE
   Numsecupol   A2000030.Num_secu_pol%TYPE := 39744932958; ---29744703018;
   Numend       A2000030.Num_end%TYPE := 1;
   Numpol1      A2000030.Num_pol1%TYPE := 1523003857101 ;  ---1505700018301;
   Numpolant    A2000030.Num_pol_ant%TYPE := 0;
   Codsecc      A2000030.Cod_secc%TYPE := 310;
   Maxend       A2000030.Num_end%TYPE;
BEGIN
   UPDATE A2000030
      SET Mca_end_anu   = NULL
    WHERE Num_secu_pol = Numsecupol
      AND Num_end IN (SELECT Num_end_modi
                        FROM A2000030
                       WHERE Num_secu_pol = Numsecupol
                         AND Num_end >= Numend
                         AND Num_end_modi IS NOT NULL);

   DELETE A2000220
    WHERE Num_secu_pol = Numsecupol AND Num_orden >= Numend;

   DELETE A1000802
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000044
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE A8000045
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE A8000046
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE C8000044
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE C8000045
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE A2000191
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE A2000250
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE C2000251
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE C2000258
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2301000
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   /* Tablas Simon */
   DELETE Sim_datossoat
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE Sim_terceros
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE Sim_riesgo_poliza
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE Sim_entregasoat
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE Sim_textos_polizas
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   -- Flotantes  Rpr 02-Oct-2006
   BEGIN
      IF Numend = 0 THEN
         DELETE C2000309
          WHERE Num_secu_pol = Numsecupol;

         DELETE C2000310
          WHERE Num_secu_pol = Numsecupol;

         DELETE C2000311
          WHERE Num_secu_pol = Numsecupol;

         DELETE C2000312
          WHERE Num_secu_pol = Numsecupol;
      ELSE
         DELETE C2000310
          WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

         DELETE C2000311
          WHERE Num_secu_pol = Numsecupol AND Num_end_inc >= Numend;

         UPDATE C2000311
            SET Num_end   = NULL
          WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

         UPDATE C2000312
            SET Num_end   = NULL
          WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         ROLLBACK;
   END;

   DELETE A2000252
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE A9990100
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2001300
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000100
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000160
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000040
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000041
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000042
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000043
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000190
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000050
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000051
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A8000020
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000060
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000260
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000280
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2040100
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2040200
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2040201
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2040300
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2040500
    WHERE Num_pol = Numpol1 AND Num_end >= Numend AND Cod_secc = Codsecc;

   DELETE C1000270
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A5021600 C
    WHERE C.Num_pol1 = Numpol1 AND C.Cod_secc = Codsecc AND Num_end >= Numend;

   DELETE A5021900 C
    WHERE C.Num_pol1 = Numpol1 AND C.Cod_secc = Codsecc AND Num_end >= Numend;

   DELETE A5020301 C
    WHERE C.Num_pol1 = Numpol1 AND C.Cod_secc = Codsecc AND Num_end >= Numend;



   -- <Comment>
   -- <Date>29/04/2011</Date>
   -- <Author>Asesoftware Dliv</Author>
   -- <Summary>
   --   Se Inserta Borrado De Tabla C2990406 Automoviles Internet
   -- </Summary>
   DELETE C2990406 A
    WHERE A.Num_secu_pol = Numsecupol
      AND A.Num_end >= Numend
      AND NOT EXISTS
                 (SELECT ''
                    FROM A2040100 B
                   WHERE B.Num_secu_pol = A.Num_secu_pol
                     AND B.Cod_ries = A.Cod_ries);

   -- </Comment>
   DELETE A2990700
    WHERE Num_secu_pol = Numsecupol
      AND Num_factura IN (SELECT Num_factura
                            FROM A2000163
                           WHERE Num_secu_pol = Numsecupol
                             AND Num_end_ref >= Numend);

   DELETE A2990701
    WHERE Num_pol1 = Numpol1
--      AND Num_factura IN (SELECT Num_factura
--                            FROM A2000163
--                           WHERE Num_secu_pol = Numsecupol
--                             AND Num_end_ref >= Numend)
      AND Cod_secc = Codsecc;

   DELETE A2000163
    WHERE Num_secu_pol = Numsecupol AND Num_end_ref >= Numend;

   DELETE C2999300
    WHERE Num_secu_pol_lider = Numsecupol AND Num_end_lider >= Numend;

   DELETE A502_multi_cia
    WHERE Num_pol1 = Numpol1
      AND NVL(Num_end, 0) >= Numend
      AND Cod_secc = Codsecc;

   DELETE A502_multi_fac
    WHERE (Num_pol1_lider = Numpol1
        OR Num_pol1_anexa = Numpol1)
      AND (NVL(Num_end_lider, 0) >= Numend
        OR NVL(Num_end_anexa, 0) >= Numend)
      AND (Cod_secc_lider = Codsecc
        OR Cod_secc_anexa = Codsecc);


   DELETE A2990800
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE C1990115
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   DELETE A2000030
    WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

   IF Numpolant > 1000000 THEN
      IF Numend = 0 THEN
         UPDATE A2000030
            SET Renovada_por = NULL, Mca_renov = 'S'
          WHERE Cod_secc = Codsecc AND Num_pol1 = Numpolant;

         UPDATE C2990008
            SET Estado   = 1
          WHERE Num_pol1 = Numpolant AND Cod_secc = Codsecc;

         DELETE C2000452
          WHERE Cod_secc = Codsecc AND Num_pol1 = Numpolant;

         DELETE A2000999
          WHERE Cod_secc = Codsecc AND Num_pol1 = Numpolant;
      ELSE
         UPDATE C2990008
            SET Estado   = 2
          WHERE Num_pol1 = Numpolant AND Cod_secc = Codsecc;
      END IF;
   END IF;

   -- <Comment>
   -- <Author>Asesoftware Dliv</Author>
   -- <Date>31/03/2011</Date>
   -- <Control>Lb_Req_Grupo 1.0</Control>
   -- <Summary>
   --       Borrado De Cumulos
   -- </Summary>
   IF Codsecc IN (18,
                  20,
                  21,
                  29) THEN
      Borra_cumulo( Numsecupol, Numend);
   END IF;

   DECLARE
      CURSOR Cursor1  IS
         SELECT Cod_cob, Cod_ries
           FROM A8000047
          WHERE Num_secu_pol = Numsecupol AND Num_end = Numend;

      C1   Cursor1%ROWTYPE;
   BEGIN
      FOR C1 IN Cursor1 LOOP
         UPDATE A8000047 A
            SET Mca_vigente   = 'S'
          WHERE A.Num_secu_pol = Numsecupol
            AND A.Cod_ries = C1.Cod_ries
            AND A.Num_end =
                   (SELECT MAX( Num_end)
                      FROM A8000047 B
                     WHERE B.Num_secu_pol = Numsecupol
                       AND B.Num_end < Numend
                       AND B.Cod_ries = A.Cod_ries
                       AND B.Cod_secc_reas = A.Cod_secc_reas
                       AND B.Cod_cob = C1.Cod_cob)
            AND A.Num_secu =
                   (SELECT MAX( C.Num_secu)
                      FROM A8000047 C
                     WHERE C.Num_secu_pol = Numsecupol
                       AND C.Num_end = A.Num_end
                       AND C.Cod_ries = A.Cod_ries
                       AND C.Cod_cob = A.Cod_cob
                       AND C.Cod_secc_reas = A.Cod_secc_reas)
            AND Cod_cob = C1.Cod_cob;
      END LOOP;

      DELETE A8000047
       WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;
   END;

   --End If;
   IF Numend >= 1 THEN
      DECLARE
         CURSOR Riesgos  IS
            SELECT DISTINCT Cod_ries Codries, Cod_cob Codcob
              FROM A2000040
             WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

         CURSOR Datos  IS
            SELECT DISTINCT Cod_campo Codcampo
              FROM A2000020
             WHERE Num_secu_pol = Numsecupol
               AND Cod_ries IS NULL
               AND Num_end >= Numend;

         CURSOR Datosr  IS
            SELECT DISTINCT Cod_ries Codries, Cod_campo Codcampo
              FROM A2000020
             WHERE Num_secu_pol = Numsecupol
               AND Cod_ries IS NOT NULL
               AND Num_end >= Numend;

         Maxend   NUMBER(5);
      BEGIN
         --   Message('Entro A Marcar Vigente A2000040');
         FOR I IN Riesgos LOOP
            SELECT NVL(MAX( Num_end), 99999)
              INTO Maxend
              FROM A2000040
             WHERE Num_secu_pol = Numsecupol
               AND Cod_ries = I.Codries
               AND Cod_cob = I.Codcob
               AND Num_end < Numend;

            IF Maxend != 99999 THEN
               UPDATE A2000040
                  SET Mca_vigente   = 'S'
                WHERE Num_secu_pol = Numsecupol
                  AND Cod_ries = I.Codries
                  AND Cod_cob = I.Codcob
                  AND Num_end = Maxend;
            END IF;
         END LOOP;

         DELETE A2000040
          WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;

         FOR J IN Datos LOOP
            SELECT NVL(MAX( Num_end), 99999)
              INTO Maxend
              FROM A2000020
             WHERE Num_secu_pol = Numsecupol
               AND Cod_ries IS NULL
               AND Cod_campo = J.Codcampo
               AND Num_end < Numend;

            IF Maxend != 99999 THEN
               UPDATE A2000020
                  SET Mca_vigente   = 'S'
                WHERE Num_secu_pol = Numsecupol
                  AND Cod_ries IS NULL
                  AND Cod_campo = J.Codcampo
                  AND Num_end = Maxend;
            END IF;
         END LOOP;

         FOR K IN Datosr LOOP
            SELECT NVL(MAX( Num_end), 99999)
              INTO Maxend
              FROM A2000020
             WHERE Num_secu_pol = Numsecupol
               AND Cod_ries = K.Codries
               AND Cod_campo = K.Codcampo
               AND Num_end < Numend;

            IF Maxend != 99999 THEN
               UPDATE A2000020
                  SET Mca_vigente   = 'S'
                WHERE Num_secu_pol = Numsecupol
                  AND Cod_ries = K.Codries
                  AND Cod_campo = K.Codcampo
                  AND Num_end = Maxend;
            END IF;
         END LOOP;

         DELETE A2000020
          WHERE Num_secu_pol = Numsecupol AND Num_end >= Numend;
      END;
   ELSE
      DELETE A2000040
       WHERE Num_secu_pol = Numsecupol;

      DELETE A2000020
       WHERE Num_secu_pol = Numsecupol;
   END IF;

   IF Numend != 0 THEN
      DECLARE
         Vrenovada   NUMBER(13);
         Vtipoend    VARCHAR2(2);
         Numendmax   NUMBER(5);
         Codend      NUMBER(3);
         Subcodend   NUMBER(3);
      BEGIN
         SELECT Num_end,
                NVL(Cod_end, 0),
                NVL(Sub_cod_end, 0),
                NVL(Tipo_end, 'XX'),
                Renovada_por
           INTO Numendmax,
                Codend,
                Subcodend,
                Vtipoend,
                Vrenovada
           FROM A2000030
          WHERE Num_secu_pol = Numsecupol
            AND Num_end = (SELECT MAX( Num_end)
                             FROM A2000030
                            WHERE Num_secu_pol = Numsecupol);

         IF Codend = 900 AND Subcodend = 89 THEN
            UPDATE A2990700
               SET Pol_renov   = 'C'
             WHERE Num_secu_pol = Numsecupol AND Num_end = Numendmax;
         END IF;

         IF Vtipoend = 'AT' THEN
            UPDATE A2000030
               SET Mca_per_anul   = 'S'
             WHERE Num_secu_pol = Numsecupol;

            UPDATE C2990008
               SET Estado   = 3
             WHERE Num_pol1 = Numpol1 AND Cod_secc = Codsecc;
         ELSE
            UPDATE A2000030
               SET Mca_per_anul   = 'N'
             WHERE Num_secu_pol = Numsecupol;

            UPDATE A2990700
               SET Pol_renov   = NULL
             WHERE Num_secu_pol = Numsecupol AND Pol_renov = 'A';

            UPDATE C2990008
               SET Estado   = DECODE(Vrenovada, NULL, 1, 2)
             WHERE Num_pol1 = Numpol1 AND Cod_secc = Codsecc;
         END IF;

         DELETE A2000050 A
          WHERE Num_secu_pol = Numsecupol
            AND NOT EXISTS
                       (SELECT ''
                          FROM A2000040
                         WHERE Num_secu_pol = Numsecupol
                           AND Cod_ries = A.Cod_ries);
      EXCEPTION
         WHEN OTHERS THEN
             ROLLBACK;
      END;
   END IF;

   -- Tablas Faltantes
   -- Polizas anuladas automaticamente
   DELETE FROM A2000411 A
         WHERE A.Num_secu_pol = Numsecupol;

   -- borra siniestros

   DELETE FROM A7001000 A
         WHERE A.Num_secu_sini IN (SELECT B.Num_secu_sini
                                     FROM A7000900 B
                                    WHERE B.Num_secu_pol = Numsecupol
                                      AND B.Cod_secc = A.Cod_secc);

   DELETE FROM A7001100 A
         WHERE (A.Num_secu_exped, A.Nro_orden_exp) IN (SELECT B.Num_secu_exped, B.Nro_orden_exp
                                                         FROM A7001000 B
                                                        WHERE B.Num_secu_sini IN (SELECT DISTINCT
                                                                                         C.Num_secu_sini
                                                                                    FROM A7000900 C
                                                                                   WHERE C.Num_secu_pol =
                                                                                            Numsecupol
                                                                                     AND C.Cod_secc =
                                                                                            B.Cod_secc));


   DELETE FROM A7001200 A
         WHERE A.Num_secu_sini IN (SELECT DISTINCT B.Num_secu_sini
                                     FROM A7000900 B
                                    WHERE B.Num_secu_pol = Numsecupol);

   DELETE FROM A3001700 A
         WHERE A.Num_sini IN (SELECT DISTINCT B.Num_sini
                                FROM A7000900 B
                               WHERE B.Num_secu_pol = Numsecupol
                                 AND B.Cod_cia = A.Cod_cia
                                 AND B.Cod_secc = A.Cod_secc);

   DELETE FROM A7000900 A
         WHERE A.Num_secu_pol = Numsecupol;

   COMMIT;
 --  EXCEPTION WHEN OTHERS THEN 
   --   ROLLBACK;
END;