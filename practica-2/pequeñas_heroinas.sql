create table PROTECTOR (
    pasaporte varchar(255) primary key,
    altura int,
    peso int
);

create table HERRAMIENTA (
    nombre varchar(255) primary key,
    poder int,
    origen varchar(255),
    protector_pasaporte varchar(255),
    constraint herramienta_protec_fk foreign key
    (protector_pasaporte) references PROTECTOR(pasaporte)
);

create table CIUDAD (
    nombre varchar(255) primary key,
    ubicacion varchar(255),
    poblacion int,
);

create table PROTEGE(
    ciudad_nombre varchar(255),
    protector_pasaporte varchar(255),
    fecha date,
    fue_exitoso boolean,
    constraint protege_pk primary key (ciudad_nombre, protector_pasaporte, fecha),
    constraint protege_ciudad_fk foreign key (ciudad_nombre)
    references CIUDAD(nombre),
    constraint protege_protector_fk foreign key (protector_pasaporte)
    references PROTECTOR(pasaporte)
)

