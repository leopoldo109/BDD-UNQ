# <ins>Cadena de deportes</ins>

-   ## Cliente <codigo(PK), DNI, fechaNac, nombre, ciudad, numero(FK), descuento>

-   ## Sucursal <numero(PK), domicilio, ciudad>

-   ## Producto <codigo(PK), descripcion, color, costo>

-   ## Fabrica <CUIT(PK), nombre, pais, gerente, cantEmp, codigo(FK)>

-   ## Empleado <legajo(PK), DNI, nombre, {telefonos}, (domicilio_calle, domicilio_numero, domicilio_ciudad)>

-   ## Tarjeta <numero(PK), nombre, codigo, fechaVenc, cod_Cliente(FK)>

-   # Sucursal <-vende-> Producto

-   ## Vende <numero (PK, FK), producto(PK,FK), precioVenta>

-   # Sucursal <-trabaja-> Empleado

-   ## Trabaja <numero(PK, FK), legajo(PK, FK), dia, horario>
