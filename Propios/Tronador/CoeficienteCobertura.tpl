SELECT ROUND(MONTHS_BETWEEN(TRUNC(to_date('22102023','ddmmyyyy')),
                                             TRUNC(to_date('23092023','ddmmyyyy'))),
                              0) FROM dual;
SELECT ROUND((1 / 12), 7) FROM dual; --0,0833333 en si eso es informativo, porque al final se multiplica es por 12 el valor de la cobertura.
