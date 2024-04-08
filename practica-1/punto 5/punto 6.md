# <ins>Ricon de lectura</ins>

-   ## Autor <nombre(PK), nacionalidad, fechaNac>

-   ## Libro <titulo (PK), idioma, nroPags>

-   ## Copia <numero (PK), alquiler, ISBN(PK,FK)>

-   ## Edicion <ISBN (FK), anho, titulo(FK)>

-   ## Usuario <DNI(PK), nYAp, domicilio>

-   # Libro <-referencia-> Libro

-   ## Referencia <titulo_refiere(PK, FK), referido(FK)>

-   # Autor <-escribe-> Libro

-   ## Escribe <nombre(PK,FK), titulo(PK,FK)>

-   # Copia <-prestamo-> Usuario

-   ## Prestame <numero(PK,FK), DNI(PK,FK), fechaPrestamo, fechaDevolucion>
