-   ## Reino <nombre_reino(PK), cantidad_habitantes, (espacio_continente, espacio_posicion), {ciudades}>

-   ## Casa <nombre_casa(PK), nombre_reino(PK,FK), lema, (descripcion_animal, descripcion_color), fecha_fundacion, religion>

-   ## Personaje <nombre_personaje(PK), nombre_casa(PK,FK), bastardo, año>

-   ## Guerra <lugar(PK), año_inicio(PK), cantidad_muertos>

-   ## Especie <nombre_especie(PK), {habilidades}, existe, hostil>

-   ## Profesion <nombre_profesion(PK), tipo, {maestros}>
