-- SINONIMOS DE UNA TABLA
SELECT * FROM DBA_SYNONYMS WHERE synonym_name IN ('C9999909');

--PARA SABER ULTIMO QUE TOMO EL PROGRAMA
select *
from sim_soporte_programas t
where upper(t.codigo_programa) = upper('SIM_PCK_ACCESO_SERVICIOS')
order by t.fecha_estado desc;

--SABER SI UN PACKAGE ES TRANSVERSAL buscar los que aparecen en el excel https://docs.google.com/spreadsheets/d/15UO3J-Yspc-KTS6FKSTba3XSTlL4KXixvSlskWz-_Ig/edit#gid=0
select distinct name, type 
from all_source a 
where upper(a.TEXT) like UPPER ('%PKG_ARCHIVOS_SOAT%');
