START C:\DesaSeguros\Desarrollo\Tronador\Software\SqlSoporteProduccion\GD540-66_02092022_09.sql --Para ejecutar script con CommandWindow


Comandos procesos WINDOWS

netstat -aon | findstr 7001
taskkill /F /PID 7001

SimonQuotation
Desarrollo
http://10.1.0.184:3082/SimonQuotation/login.html
Test
http://10.1.20.15:2082/SimonQuotation/login.html

simon reportes
https://ambientepruebas.segurosbolivar.com/SimonReportes/login.html


Simon Reportes
el server y credenciales son
SIMON REPORTES
http://10.1.0.184:3041/console/
user: wldeploytransdesa12c
pass: Deployer21


mvn clean install -Dmaven.test.skip=true
mvn -Ptest clean install -Dmaven.test.skip=true
mvn -Pdesa clean install -Dmaven.test.skip=true
mvn -Pprod clean install -Dmaven.test.skip=true
