## AutoReplacePLSQL
## Archivo de configuraciones para los PL (tipificar mas rapido)


El archivo ***plConversionShort.txt*** nos asocia a los template o contiene sentencias simples asociadas a un key para acceder por medio solo de ese nombre.
La carpeta ***Propios*** es la que contiene los Templates.

La ruta por defecto en windows usualmente es C:\Program Files (x86)\PLSQL Developer\Template

### Entonces lo pasos son:

1. Si no tiene descargado GIT ir a **https://gitforwindows.org/**

2. Probablemente haya un problema de permisos entonces toca dirigirse a la carpeta C:\Program Files (x86)\PLSQL Developer y dar permisos (**CONTROL TOTAL**)
 * ![image](https://user-images.githubusercontent.com/86784290/200571185-a501ef5b-eb41-4381-8e9e-a4ec5612ee9b.png)
 
3. Entrar a la ruta **C:\Program Files (x86)\PLSQL Developer\Template** y abrir una consola de windows o git bash

4. Digitar           **git clone https://github.com/AlmeidaJhoan/AutoReplacePLSQL.git**    --> "ESTO ES PARA BAJAR EL REPO COMO EN SVN ES CHECKOUT"
  * __SI NO SIRVE__ Pedir acceso al REPO.

5. Dirigirse a la carpeta **C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL**

6. y Abra una nueva **terminal** ubicado en esta ruta **click derecho**  git bash para codificar los comandos de la seccion (__para realizar modificaciones y subir cambios__)

7. Ir al paso de asociación del template al Pl/SQL que es la nota de abajo .

## NOTA:

Para que esto sirva toca en el Pl/SQL --> Tool --> Preferences --> Editor (User Interface) --> AutoReplace dejarlo **Enable** y colocar la siguiente ruta 
**C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL\plConversionShort.txt**

## para realizar modificaciones y subir cambios (ESTO SON PASOS ADICIONALES PARA BAJAR Y SUBIR CAMBIOS)

* Por buena practica siempre es mejor hacer un **UPDATE** a lo que hay por eso mejor ejecutar antes de hacer commit **git pull**.
* Cuando son archivos **NUEVOS** toca digitar **git add .** para que los empiece a rastrear GIT.
* **git commit -am "COMENTARIO RELEVANTE DEL AJUSTE"**    --> "ESTO ES PARA QUE QUEDE EL COMMIT LOCALMENTE".
* **git push origin main** --> "ESTO ES PARA SUBIR AL REPO COMO TAL".

## para actualizar los recursos en local es:
  * Abrir terminal
  * **cd** C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL\
  * Abrir terminal
  * **git pull**

## Para subir nuevos Scrips la idea es llevar la siguiente nomenclatura:
* Dependiendo que base de datos pertenezca el Script se debe crear o subir respectivamente en esa ruta. 

* ![image](https://user-images.githubusercontent.com/86784290/200571552-f13aacc1-a9ce-40a2-bcb0-fc82ea81d9ed.png)

* Cuando se hace un Script para un JIRA en especifico debe llevar la nomenclatura <JI-RA>_<NOMBRE_DICIENTE> a nivel de **CARPETA** Como se muestra en la siguiente imagen el punto **1, Cuando es un Script Transversal o que no necesariamente se creo por un JIRA puntual debe ir en la Raiz de la carpeta como se señala en el punto **2 con un nombre diciente de lo que hace ese Script. 
 ![image](https://user-images.githubusercontent.com/86784290/200573226-dda77666-1131-4bc9-ad2a-40c19de388a1.png)
 Adentro de la **CARPETA** del jira se crea el Template (.tpl) este nombre debe ser diciente como se muestra en la imagen (Puede ser distinto al nombre de la carpeta o igual en su defecto) ![image](https://user-images.githubusercontent.com/86784290/200574078-e31608d5-3e79-4b11-86aa-1bd7559c9ee7.png)
-- Adentro de esta carpeta se puede asociar mas de un Script, imagenes, un TXT diciente que explique el paso a paso o cosas que ayudaron al Jira pero lo mejor es que este netamente el Script (.TPL).
 
* Si un script ya existe la idea es Reutilizarlo **OJO , Por favor leer el contenido de la imagen siguiente para mas contexto de como llevar estos escenarios.
 ![image](https://user-images.githubusercontent.com/86784290/200575817-210dec7b-2077-4be8-802a-e1c848b25298.png)
 
* La idea es crear un nombre como se muestra en el punto **2  se facilita la pagina donde se puede hacer https://fsymbols.com/es/generadores/.
 Cuando es un Jira nuevo y un Script nuevo se debe asociar como en el punto **3, Cuando es un Jira donde se va a reutilizar un Script ya existente se debe hacer como se visualiza en el punto **4 **OJO el nombre que se señala en el punto **5 es con el que se va a autocompletar en el PL/SQL y debe llevar esa nomenclatura (<NOMBRE_DICIENTE>_<JIRA-NUMERO> --> Ej. actualizacionesMasivas_ESTCORE-6625) ![image](https://user-images.githubusercontent.com/86784290/200578396-afd19a9b-dbe7-4d43-99cc-bbe58b757ee3.png) en caso de que ya exista como en el punto **4 funcionaria la misma nomenclatura por ejemplo bloqueoTest_JIRA-NUMERO sin embargo en la ruta queda asociado el Script que se esta reutilizando (Pero el numero del Jira si debe ser el actual osea el que se esta atacando).
