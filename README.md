# AutoReplacePLSQL
# Archivo de configuraciones para los PL (tipificar mas rapido)


El archivo ***plConversionShort.txt*** nos asocia a los template o contiene sentencias simples asociadas a un key para acceder por medio solo de ese nombre.
La carpeta ***Propios*** es la que contiene los Templates.

La ruta por defecto en windows usualmente es C:\Program Files (x86)\PLSQL Developer\Template

# Entonces lo pasos son:

* Si no tiene descargado GIT ir a **https://gitforwindows.org/**
* Entrar a la ruta **C:\Program Files (x86)\PLSQL Developer\Template** y abrir una consola de windows o git bash
* Probablemente haya un problema de permisos entonces toca dirigirse a la carpeta C:\Program Files (x86)\PLSQL Developer y dar permisos (**CONTROL TOTAL**)
* Digitar           **git clone https://github.com/AlmeidaJhoan/AutoReplacePLSQL.git**    --> "ESTO ES PARA BAJAR EL REPO COMO EN SVN ES CHECKOUT"
* Dirigirse a la carpeta **C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL**
* y Abra una nueva **terminal** ubicado en esta ruta **click derecho**  git bash para codificar los comandos de la seccion (__para realizar modificaciones y subir cambios__)


# para realizar modificaciones y subir cambios

* Por buena practica siempre es mejor hacer un **UPDATE** a lo que hay por eso mejor ejecutar antes de hacer commit **git pull**.
* Cuando son archivos **NUEVOS** toca digitar **git add .** para que los empiece a rastrear GIT.
* **git commit -am "COMENTARIO RELEVANTE DEL AJUSTE"**    --> "ESTO ES PARA QUE QUEDE EL COMMIT LOCALMENTE".
* **git push origin main** --> "ESTO ES PARA SUBIR AL REPO COMO TAL".

__SI NO SIRVE__ Pedir acceso al REPO.

# para actualizar es:

* **git pull**


## NOTA:

Para que esto sirva toca en el Pl/SQL --> Tool --> Preferences --> Editor (User Interface) --> AutoReplace dejarlo **Enable** y colocar la siguiente ruta 
**C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL\plConversionShort.txt**
