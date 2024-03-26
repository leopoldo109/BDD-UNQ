# <ins>Entidades</ins>

-   ## Planta <color(PK), superficie, {(proceso_nombre, proceso_grado_complejidad)}>

-   ## Maquina <numero(PK), marca, modelo, color(FK)>

-   ## Tecnico <DNI(PK), nyAp, fecNac, {telefono}>

---

# <ins>Tabla intermedia entre maquina y tecnico </ins>

-   ### Opera <DNI(PK,FK), numero(PK,FK), turno, {perdiodo_fecha_inicio, fecha_fin} >

-   # Planta <-> Maquina

_se agrega una clave foranea a maquina_

-   # esReemplazado_Maquina <-> reemplaza_Maquina

## Reemplaza <es_Reemplazado(PK,FK), reemplaza(PK,FK)>
