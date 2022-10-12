SELECT A.PAT_VEH
  FROM SIM_DATOSSOAT A
 WHERE A.NUM_SECU_POL IN
       (SELECT B.NUM_SECU_POL
          FROM A2000030 B
         WHERE B.NUM_SECU_POL = A.NUM_SECU_POL
           AND B.NUM_END = A.NUM_END
           AND B.COD_CIA = 3
           AND B.COD_SECC = 310
           AND B.COD_RAMO = 315
           AND B.FECHA_EMI_END BETWEEN TO_DATE('15062021', 'DDMMYYYY') AND
               TO_DATE('01072021', 'DDMMYYYY')
           AND B.NUM_END = 0);