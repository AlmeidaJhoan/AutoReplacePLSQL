jdbc:oracle:thin:@10.1.7.10:1521:tronmask --> Desarrollo
jdbc:oracle:thin:@10.1.20.5:1521:tron --> Test
jdbc:oracle:thin:@10.1.20.5:1521:tron --> Agendamiento (WEBAPP)


Desa
Usuario y Contraseña: ops$puma / puma

Test
Usuario y Contraseña: CONSULTA_PUMA / P4m4C0ns4lt4

Preproducción
Usuario y Contraseña: ops$puma / puma


SIMON = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = 
        (PROTOCOL = TCP)
        (HOST = 10.1.20.5)
        (PORT = 1521)
      )
    )
    (CONNECT_DATA = 
      (SID = simon)
    )
  )

DESA_TRONMASK =
  (DESCRIPTION=
    (ADDRESS = (PROTOCOL = TCP)(HOST=10.1.7.10) (PORT=1521))
    (CONNECT_DATA= (SID=tronmask))
  )
  
MAP_DESA =
	(DESCRIPTION =
	(ADDRESS = (COMMUNITY = tcp.world)(PROTOCOL = TCP)(Host = 10.1.7.12)(Port = 1521))
	(CONNECT_DATA = (SID = desa11g ))
)

TEST_TRONADOR = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = 
        (PROTOCOL = TCP)
        (Host = 10.1.20.5)
        (Port = 1521)
      )
    )
    (CONNECT_DATA = 
      (SID = tron)
    )
  )
OFV_TEST =
(DESCRIPTION =
  (ADDRESS = (PROTOCOL = TCP)(HOST = 10.1.20.5)(PORT = 1521))
  (CONNECT_DATA =
	(SID = logerr)
  )
)
