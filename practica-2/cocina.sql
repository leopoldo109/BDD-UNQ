create table PARTICIPANTE (
    apodo varchar(255),
    edad int,
    ciudad varchar(255),
    nombre_maestro varchar (255),
    maestro_restaurante_razon_social varchar(255),
    constraint PARTICIPANTE_PK primary key
    (apodo, nombre_maestro,maestro_restaurante_razon_social),
    constraint PARTICIPANTE_FK foreign key (nombre_maestro,maestro_restaurante_razon_social)
    references MAESTRO(nombre, restaurante)
);

create table PROGRAMA (
    numero int primary key,
    fecha date,
    hora_inicio time,
    grabacion int
);

create table PLATO (
    plato varchar(255),
    participante_apodo varchar(255),
    nombre_maestro varchar (255),
    maestro_restaurante_razon_social varchar(255),
    tipo varchar (255),
    es_vegano boolean,
    programa_numero int,
    constraint plato_pk primary key (plato, participante_apodo, nombre_maestro, maestro_restaurante_razon_social),
    constraint plato_apodo_fk foreign key (participante_apodo)  references PARTICIPANTE(apodo),
    constraint plato_maestro_fk foreign key (nombre_maestro,maestro_restaurante_razon_social) references MAESTRO(nombre, restaurante_razon_social),
    constraint plato_num_prog_fk foreign key (programa_numero) references PROGRAMA(numero)
);

create table MAESTRO (
    nombre varchar(255),
    restaurante_razon_social varchar(255),
    fecha_nac timestamp,
    tiempo_profesional int,
    constraint maestro_pk primary key (nombre, restaurante_razon_social),
    constraint maestro_restaurante_fk foreign key (restaurante_razon_social) 
    references RESTAURANTE(razon_social),
);

create table RESTAURANTE (
    razon_social varchar(255) primary key,
    fundacion timestamp,
    cant_estrellas int
);