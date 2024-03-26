# <ins>Sistema de blogs</ins>

-   ## Oyente <avatar, fecha_registro, email(PK), password, username>

-   ## Comentario <id(Pk), texto, titulo(FK), email(FK)>

-   ## Nota <titulo (PK), contenido, resumen, imagen, nombre(FK)>

-   ## Categoria <nombre(PK), descripcion, imagen>

-   ## Programa <nombre(PK), descripcion, {conductores}, (horario_inicio, horario_fin)>

-   # Nota <-posee-> Categoria

-   ## Posee <titulo(PK,FK), nombre(PK,FK)>

-   # Categoria <-pertenece-> Categoria

-   ## Pertenece <nombre_padre(PK,FK), nombre_hija(PK,FK)>
