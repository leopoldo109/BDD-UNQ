/*
LOCAL < ciudad (PK), legajo_gerente (PK), cant_pisos, horario_cierre >

- ciudad: varchar

- legajo_gerente: varchar

- cant_pisos: int

- horario_cierre: time

*/

create table LOCAL (
    ciudad varchar(255),
    legajo_gerente varchar(255),
    cant_pisos int,
    horario_cierre time,
    constraint local_pk primary key (ciudad, legajo_gerente)
);


/*
FACTURA < nombre (PK), gusto (PK), peso, ancho, alto, tiene_crema, tiene_ddl >
- nombre: varchar
- gusto: varchar
- peso: int
- ancho: int
- alto: int
- tiene_crema: boolean
- tiene_ddl: boolean
*/

create table FACTURA (
    nombre varchar(255),
    gusto varchar(255),
    peso int check(peso > 0),
    ancho int check(ancho > 0),
    alto int check(alto > 0),
    tiene_crema boolean,
    tiene_ddl boolean,
    constraint factura_pk primary key (nombre, gusto)
)

create table INCLUYE (
    factura_nom varchar(255),
    factura_gusto varchar(255),
    cliente_dni int,
    nro_pedidod
)
