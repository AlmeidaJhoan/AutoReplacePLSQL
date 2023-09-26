BEGIN
 SELECT *
 --into l_retorna
   FROM X_MULTICLAVES M
   
  WHERE M.NRODOCEMPLEADO = '12345693'
    AND M.CLAVEINTER = '73800';
 
 SELECT *
   FROM X_MULTICLAVES M
  WHERE NRODOCEMPLEADO IN ('12345693', '79468066')
    FOR UPDATE EXCEPTION WHEN NO_DATA_FOUND THEN L_RETORNA := 0;
WHEN
OTHERS THEN L_RETORNA := 0;
END;


select * from x_multiclaves m WHERE nrodocempleado IN('12345693','79468066') FOR UPDATE --12345669

select *from sim_convenio_seguros c where c.convenio = 1535810000;
SELECT * FROM INTERMEDIARIOS WHERE clave = '35810' 

SELECT a.num_pol1,a.* from a2000030 a WHERE a.cod_secc = 310 AND a.cod_prod = '35810' AND a.num_pol1 > 0 ORDER BY a.num_pol1 DESC
--AND NVL(a.mca_provisorio,'N') ='S' ORDER BY a.num_pol1 DESC
