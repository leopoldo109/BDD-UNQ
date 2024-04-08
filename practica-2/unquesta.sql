create table ALUMNO(
    legajo int primary key,
    nombre varchar(255),
    dni int,
    telefono numeric(10,0),
    fecha_nac date
);

create table COMISION (
    numero int,
    materia varchar(255),
    nombre_profesor varchar(255) UNIQUE,
    constraint comision_pk primary key (numero,materia) 
);

create table PREGUNTA (
    consigna varchar(255),
    comision_numero int,
    comision_materia varchar(255),
    tema ENUM('matemática', 'lengua', 'geografía', 'historia'),
    dificultad int,
    constraint pregunta_pk primary key (consigna, comision_numero, comision_materia),
    constraint pregunta_comision_fk foreign key (comision_numero, comision_materia) 
    references COMISION(numero, materia)
);

create table RESPUESTA (
    alumno_legajo int,
    pregunta_consigna varchar(255),
    pregunta_comision_numero int,
    pregunta_comision_materia varchar(255),
    opcion varchar(255),
    puntaje decimal (2,0) check(puntaje >= 0 AND puntaje <= 10),
    legajo_docente int,
    constraint respuesta_pk primary key (alumno_legajo, pregunta_consigna, comision_numero, comision_materia, legajo_docente),
    constraint respuesta_pregunta_fk foreign key (pregunta_consigna, pregunta_comision_materia,pregunta_comision_numero) 
    references PREGUNTA(consigna,comision_materia, comision_numero),
    constraint respuesta_alumno foreign key (alumno_legajo) references ALUMNO(legajo)

);  
