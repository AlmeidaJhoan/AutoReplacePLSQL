## AutoReplacePLSQL
## Archivo de configuraciones para los PL (tipificar mas rapido)


El archivo ***plConversionShort.txt*** nos asocia a los template o contiene sentencias simples asociadas a un key para acceder por medio solo de ese nombre.
La carpeta ***Propios*** es la que contiene los Templates.

La ruta por defecto en windows usualmente es C:\Program Files (x86)\PLSQL Developer\Template

### Entonces lo pasos son:

1. Si no tiene descargado GIT ir a **https://gitforwindows.org/**
2. Probablemente haya un problema de permisos entonces toca dirigirse a la carpeta C:\Program Files (x86)\PLSQL Developer y dar permisos (**CONTROL TOTAL**)
 ![image](https://user-images.githubusercontent.com/86784290/200568865-8ddb42e7-5528-40d5-bbae-547236bd3fde.png)
3. Entrar a la ruta **C:\Program Files (x86)\PLSQL Developer\Template** y abrir una consola de windows o git bash
4. Digitar           **git clone https://github.com/AlmeidaJhoan/AutoReplacePLSQL.git**    --> "ESTO ES PARA BAJAR EL REPO COMO EN SVN ES CHECKOUT"
  *__SI NO SIRVE__ Pedir acceso al REPO.

  # para actualizar es:
  * Abrir terminal
  * **cd** C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL\
  * Abrir terminal
  * **git pull**

5. Dirigirse a la carpeta **C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL**
6. y Abra una nueva **terminal** ubicado en esta ruta **click derecho**  git bash para codificar los comandos de la seccion (__para realizar modificaciones y subir cambios__)
7. Ir al paso de asociación del template al Pl/SQL que es la nota de abajo .

## NOTA:

Para que esto sirva toca en el Pl/SQL --> Tool --> Preferences --> Editor (User Interface) --> AutoReplace dejarlo **Enable** y colocar la siguiente ruta 
**C:\Program Files (x86)\PLSQL Developer\Template\AutoReplacePLSQL\plConversionShort.txt**

# para realizar modificaciones y subir cambios (ESTO SON PASOS ADICIONALES PARA BAJAR Y SUBIR CAMBIOS)

* Por buena practica siempre es mejor hacer un **UPDATE** a lo que hay por eso mejor ejecutar antes de hacer commit **git pull**.
* Cuando son archivos **NUEVOS** toca digitar **git add .** para que los empiece a rastrear GIT.
* **git commit -am "COMENTARIO RELEVANTE DEL AJUSTE"**    --> "ESTO ES PARA QUE QUEDE EL COMMIT LOCALMENTE".
* **git push origin main** --> "ESTO ES PARA SUBIR AL REPO COMO TAL".



