# CURSORES

Los cursores son objetos que nos permiten almacenar filas de la Base de Datos y trabajar con ellas de manera mucho más dinámica que trabajando solo con la sentencia `select`.

Los cursores se dividen en dos:

* Cursores Implícitos
* Cursores Explícitos

## CURSORES IMPLÍCITOS

Son aquellos que se generan automáticamente cuando lanzamos algún comando, es decir, el hecho de haber creado un `select`, crea de manera automática un cursor implícito, es decir, que Oracle se encarga de abrir el área de memoria correspondiente, efectúa la consulta, recupera la fila y guarda la memoria.

## CURSOR EXPLÍCITO

Es aquel en el que definimos las `select`, lo abrimos, lo rellenamos, nos movemos a través de él y lo cerramos. Son mucho mas potentes que los cursores implícitos.

## ATRIBUTOS DE CURSORES

* `SQL`%ISOPEN
* `SQL`%FOUND
* `SQL`%NOTFOUND
* `SQL`%ROWFOUND

