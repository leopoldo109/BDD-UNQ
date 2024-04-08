create table COMIQUERIA (
    nombre_comiqueria varchar(255) primary key,
    forma_contributiva varchar (255),
    ciudad varchar (255),
    direccion varchar(255) UNIQUE,
    piso int UNIQUE,
    local varchar(255),
    constraint forma_contri_check CHECK (forma_contributiva IN ("Esquema_piramidal", "monotributo", "cooperativa", "empresa"))
);

create table EDITORIAL (
    nombre_editorial varchar(255) primary key,
    jefe varchar(255),
    nro_empleados int,
    al_dia_con_afip boolean
);

create table COMIC (
    nombre varchar(255),
    tomo int,
    demografia varchar(255),
    origen varchar(255),
    edicion varchar(255),
    constraint comic_pk primary key (nombre,tomo),
    constraint editorial_fk foreign key (edicion) references EDITORIAL(nombre_editorial),
    constraint demografia_check CHECK (demografia in("shonen","seinen","shoujo", "josei")),
    constraint origen_check CHECK (origen in("Japon", "Corea", "China", "Francia", "USA"))
);

create table VENTA (
    comic_nombre varchar(255),
    comic_tomo varchar(255),
    nombre_comiqueria varchar(255),
    fecha timestamp,
    cantidad_comprada int,
    forma_pago varchar(255),
    constraint venta_pk primary key (comic_nombre, comic_tomo, nombre_comiqueria, fecha),
    constraint venta_comic_fk foreign key (comic_nombre, comic_tomo) references COMIC(nombre, tomo),
    constraint venta_comiqueria_fk foreign key (nombre_comiqueria) references COMIQUERIA(nombre_comiqueria),
    constraint forma_pago_check CHECK (forma_pago IN ("efectivo", "debito", "credito", "transferencia"))
)