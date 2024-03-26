# Mapeo de entidades

## Venta <nro_factura(PK), descuento, fecha, montoFinal, CUIT_Cliente(FK)>

## Cliente <CUIT(PK), nombre, {telefono}, (direccion_ciudad, direccion_comuna, direccion_numero, direccion_calle)>

## Producto <id_producto(PK), stock, nombre, precio, id_categoria(FK)>

## Proveedor <CUIT(PK), nombre, web, telefono, (direccion_ciudad, direccion_comuna, direccion_numero, direccion_calle),id_producto(FK)>

## Categoria <id_categoria(PK), nombre, descripcion>

-   # Venta <-participa-> Producto

## Participa <nro_factura(PK,FK), id_producto(PK,FK), montoTotalProducto, cantidadVtaUnidad, precioUnidad>
