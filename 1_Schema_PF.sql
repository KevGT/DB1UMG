create table ALERTAS 
(
   ID_ALERTA            VARCHAR2(12)         not null,
   ID_EMAIL             NUMBER(12),
   ID_TELEFONO          NUMBER(12),
   ALERTA               VARCHAR2(50),
   constraint PK_ALERTAS primary key (ID_ALERTA)
);


create table CAJA_RECEPTORA 
(
   ID_CAJA_RECEPTORA    NUMBER(12)           not null,
   ID_TURNO             NUMBER(12),
   ID_VENTA             NUMBER(12),
   SALDO_INICIAL        DOUBLE PRECISION,
   SALDO_FINAL          DOUBLE PRECISION,
   FECHA                DATE,
   HORA_APERTURA        TIMESTAMP,
   HORA_CIERRE          TIMESTAMP,
   constraint PK_CAJA_RECEPTORA primary key (ID_CAJA_RECEPTORA)
);


create table CATEGORIA_PRODUCTO 
(
   ID_TIPO_PRODUCTO     NUMBER(12)           not null,
   CATEGORIA_PRODUCTO   VARCHAR2(25),
   constraint PK_CATEGORIA_PRODUCTO primary key (ID_TIPO_PRODUCTO)
);


create table CLIENTE 
(
   ID_CLIENTE           NUMBER(12)           not null,
   ID_PERSONA           NUMBER(12),
   ID_TIPO_CLIENTE      NUMBER(12),
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);


create table CONTENIDO_ENVIO 
(
   ID_CONTENIDO_ENVIO   VARCHAR2(12)         not null,
   ID_ENVIO             NUMBER(12),
   CONTENIDO            VARCHAR2(12),
   constraint PK_CONTENIDO_ENVIO primary key (ID_CONTENIDO_ENVIO)
);


create table DEPARTAMENTO 
(
   ID_DEPARTAMENTO      NUMBER(12)           not null,
   ID_PAIS              NUMBER(12),
   DEPARTAMENTO         VARCHAR2(45),
   constraint PK_DEPARTAMENTO primary key (ID_DEPARTAMENTO)
);


create table DESTINATARIO 
(
   ID_DESTINATARIO      NUMBER(12)           not null,
   ID_EMPRESA           NUMBER(12),
   ID_USUARIO           NUMBER(12),
   constraint PK_DESTINATARIO primary key (ID_DESTINATARIO)
);


create table DETALLE_ENVIO 
(
   ID_PAQUETE           NUMBER(12),
   ID_DETALLE_ENVIO     NUMBER(12)           not null,
   FECHA_ENVIO          DATE,
   EMBALAJE             VARCHAR2(50),
   PESO_TOTAL           NUMBER(12),
   VALOR_TRANSPORTE     NUMBER(12),
   COSTO_ESTIMADO       NUMBER(12),
   REFERENCIA           VARCHAR2(90),
   constraint PK_DETALLE_ENVIO primary key (ID_DETALLE_ENVIO)
);


create table DETALLE_FACTURA 
(
   ID_DETALLE_FACTURA   NUMBER(12)           not null,
   ID_FACTURA           NUMBER(12),
   ID_PRODUCTO          NUMBER(12),
   ID_EMPRESA           NUMBER(12),
   ID_IMPUESTO          NUMBER(12),
   ID_USUARIO           NUMBER(12),
   ID_PROMOCION         number(12),
   PRECIO               NUMBER(12),
   DESCUENTO            NUMBER(12),
   TOTAL                NUMBER(12),
   constraint PK_DETALLE_FACTURA primary key (ID_DETALLE_FACTURA)
);


create table DETALLE_PAGO 
(
   ID_DETALLE_PAGO      NUMBER(12)           not null,
   ID_MODO_PAGO         VARCHAR2(12),
   ID_PAGO              NUMBER(12),
   MONTO                DOUBLE PRECISION,
   constraint PK_DETALLE_PAGO primary key (ID_DETALLE_PAGO)
);


create table DEVOLUCIONES 
(
   ID_DEVOLUCION        NUMBER(12)           not null,
   DEVOLUCION           VARCHAR2(65),
   DESCRIPCION          VARCHAR2(75),
   constraint PK_DEVOLUCIONES primary key (ID_DEVOLUCION)
);


create table DIRECCION 
(
   ID_DIRECCION         NUMBER(12)           not null,
   ID_MUNICIPIO         NUMBER(12),
   DIRECCION            VARCHAR2(50),
   CODIGO_POSTAL        NUMBER(12),
   constraint PK_DIRECCION primary key (ID_DIRECCION)
);


create table DOCUMENTO 
(
   ID_DOCUMENTO         VARCHAR2(50)         not null,
   TIP_ID_DOCUMENTO     NUMBER(12),
   ID_DIRECCION         NUMBER(12),
   ID_PERSONA           NUMBER(12),
   constraint PK_DOCUMENTO primary key (ID_DOCUMENTO)
);

create table EMAIL 
(
   ID_EMAIL             NUMBER(12)           not null,
   ID_TIPO_EMAIL        NUMBER(12),
   DIRECCION_EMAIL      VARCHAR2(60),
   EMPRESA_EMAIL        VARCHAR2(80),
   constraint PK_EMAIL primary key (ID_EMAIL)
);


create table ENVIOS 
(
   ID_ENVIO             NUMBER(12)           not null,
   ID_DETALLE_ENVIO     NUMBER(12),
   ID_DESTINATARIO      NUMBER(12),
   ID_SERVICIO          NUMBER(12),
   ID_MANEJO            NUMBER(12),
   ID_ALERTA            VARCHAR2(12),
   ID_USUARIO           NUMBER(12),
   ID_ESTADO            NUMBER(12),
   ID_DIRECCION         NUMBER(12),
   ID_PRODUCTO          NUMBER(12),
   ID_DEVOLUCION        NUMBER(12),
   ENVIO                VARCHAR2(45),
   FECHA                DATE,
   constraint PK_ENVIOS primary key (ID_ENVIO)
);


create table FACTURA 
(
   ID_FACTURA           NUMBER(12)           not null,
   ID_CLIENTE           NUMBER(12),
   ID_ESTADO            NUMBER(12),
   FECHA                TIMESTAMP,
   constraint PK_FACTURA primary key (ID_FACTURA)
);


create table GARANTIA 
(
   ID_GARANTIA          NUMBER(12)           not null,
   ID_TIPO_GARANTIA     NUMBER(12),
   ID_CLIENTE           NUMBER(12),
   ID_PRODUCTO          NUMBER(12),
   GARANTIA             VARCHAR2(60),
   FECHA_INICIO_G       DATE,
   FECHA_FIN_G          DATE,
   DESCRIPCION          VARCHAR2(60),
   OBSERVACIONES        VARCHAR2(190),
   constraint PK_GARANTIA primary key (ID_GARANTIA)
);


create table ID_TIPO_PAQUETE 
(
   ID_TIPO_PAQUETE      NUMBER(12)           not null,
   TIPO_PAQUETE         VARCHAR2(60),
   LARGO                NUMBER(12),
   ANCHO                NUMBER(12),
   PROFUNDIDA           NUMBER(12),
   PESO                 NUMBER(12),
   constraint PK_ID_TIPO_PAQUETE primary key (ID_TIPO_PAQUETE)
);


create table IMPUESTO 
(
   ID_IMPUESTO          NUMBER(12)           not null,
   TIP_ID_IMPUESTO      VARCHAR2(12),
   IMPUESTO             NUMBER(12),
   constraint PK_IMPUESTO primary key (ID_IMPUESTO)
);


create table KARDEX 
(
   ID_KARDEX            NUMBER(12)           not null,
   ID_MOVIMIENTO        NUMBER(12),
   ID_PROVEEDOR         VARCHAR2(12),
   ID_PRODUCTO          NUMBER(12),
   PRECIO_COMPRA        DOUBLE PRECISION,
   PRECIO_VENTA         DOUBLE PRECISION,
   STOCK_ANTERIOR       NUMBER(12),
   STOCK_ACTUAL         NUMBER(12),
   TIPO                 VARCHAR2(10),
   CANTIDAD             NUMBER(12),
   constraint PK_KARDEX primary key (ID_KARDEX)
);


create table MANEJO 
(
   ID_MANEJO            NUMBER(12)           not null,
   MANEJO               VARCHAR2(60),
   constraint PK_MANEJO primary key (ID_MANEJO)
);


create table MAN_ESTADOS 
(
   ID_ESTADO            NUMBER(12)           not null,
   ID_TESTADO           NUMBER(12),
   ESTADO               VARCHAR2(45),
   constraint PK_MAN_ESTADOS primary key (ID_ESTADO)
);


create table MODO_PAGO 
(
   ID_MODO_PAGO         VARCHAR2(12)         not null,
   MODO_PAGO            VARCHAR2(80),
   constraint PK_MODO_PAGO primary key (ID_MODO_PAGO)
);


create table MOVIMIENTO 
(
   ID_MOVIMIENTO        NUMBER(12)           not null,
   FACTURA              VARCHAR2(60),
   FECHA_FACTURA        DATE,
   FECHA_SALIDA         TIMESTAMP,
   RESPONSABLE          VARCHAR2(60),
   TIPO_MOVIMIENTO      VARCHAR2(60),
   MOVIMIENTO           VARCHAR2(80),
   constraint PK_MOVIMIENTO primary key (ID_MOVIMIENTO)
);


create table MUNICIPIO 
(
   ID_MUNICIPIO         NUMBER(12)           not null,
   ID_DEPARTAMENTO      NUMBER(12),
   MUNICIPIO            VARCHAR2(60),
   constraint PK_MUNICIPIO primary key (ID_MUNICIPIO)
);


create table NEGOCIO 
(
   ID_EMPRESA           NUMBER(12)           not null,
   ID_DOCUMENTO         VARCHAR2(50),
   ID_EMAIL             NUMBER(12),
   ID_TELEFONO          NUMBER(12),
   NOMBRE               VARCHAR2(50),
   constraint PK_NEGOCIO primary key (ID_EMPRESA)
);


create table PAGO 
(
   ID_PAGO              NUMBER(12)           not null,
   ID_CLIENTE           NUMBER(12),
   FECHA                TIMESTAMP,
   MONTO_TOTAL          DOUBLE PRECISION,
   constraint PK_PAGO primary key (ID_PAGO)
);


create table PAIS 
(
   ID_PAIS              NUMBER(12)           not null,
   PAIS                 VARCHAR2(60),
   constraint PK_PAIS primary key (ID_PAIS)
);


create table PAQUETE 
(
   ID_PAQUETE           NUMBER(12)           not null,
   ID_TIPO_PAQUETE      NUMBER(12),
   PAQUETE              VARCHAR2(60),
   constraint PK_PAQUETE primary key (ID_PAQUETE)
);


create table PERSONA 
(
   ID_PERSONA           NUMBER(12)           not null,
   ID_TELEFONO          NUMBER(12),
   ID_EMAIL             NUMBER(12),
   APELLIDO_PATERNO     VARCHAR2(25),
   APELLIDO_MATERNO     VARCHAR2(30),
   PRIMER_NOMBRE        VARCHAR2(35),
   SEGUNDO_NOMBRE       VARCHAR2(35),
   SEXO                 CHAR(2),
   EDAD                 DATE,
   constraint PK_PERSONA primary key (ID_PERSONA)
);


create table PRODUCTO 
(
   ID_PRODUCTO          NUMBER(12)           not null,
   ID_TIPO_PRODUCTO     NUMBER(12),
   ID_UNIDAD_MEDIDA     NUMBER(12),
   NOMBRE_PRODUCTO      VARCHAR2(40),
   CANTIDAD_MINIMA      NUMBER(12),
   CANTIDAD_MAXIMA      NUMBER(12),
   EXISTENCIA_PRODUCTO  NUMBER(12),
   PRECIO_COSTO_PRODUCTO NUMBER(12),
   PRECIO_VENTA_PRODUCTO NUMBER(12),
   ACTIVO_PRODUCTO      NUMBER(12),
   constraint PK_PRODUCTO primary key (ID_PRODUCTO)
);


create table PROMOCION 
(
   ID_PROMOCION         number(12)           not null,
   ID_CLIENTE           NUMBER(12),
   TIPO                 VARCHAR2(80),
   COSTO                DOUBLE PRECISION,
   INICIO_PROMO         DATE,
   FIN_PROMO            DATE,
   ESTADO_PROMO         VARCHAR2(30),
   DESCRIP_PROMO        VARCHAR2(120),
   constraint PK_PROMOCION primary key (ID_PROMOCION)
);


create table PROVEEDOR 
(
   ID_PROVEEDOR         VARCHAR2(12)         not null,
   ID_TELEFONO          NUMBER(12),
   ID_DIRECCION         NUMBER(12),
   ID_EMAIL             NUMBER(12),
   NOMBRE_EMPRESA       VARCHAR2(50),
   constraint PK_PROVEEDOR primary key (ID_PROVEEDOR)
);


create table REMITENTE 
(
   ID_REMITENTE         NUMBER(12)           not null,
   ID_EMPRESA           NUMBER(12),
   ID_FACTURA           NUMBER(12),
   ID_USUARIO           NUMBER(12),
   ID_CONTENIDO_ENVIO   VARCHAR2(12),
   constraint PK_REMITENTE primary key (ID_REMITENTE)
);


create table REPARACIONES 
(
   DESCRIPCION2         VARCHAR2(190),
   COSTO                NUMBER(12),
   FECHA_RECIBO         DATE,
   FECHA_FECHA_ENTREGA  DATE,
   ID_REPARACION        NUMBER(12)           not null,
   ID_REPACION          NUMBER(12),
   ID_GARANTIA          NUMBER(12),
   REPACION             VARCHAR2(12),
   DESCRIPCION          VARCHAR2(12),
   constraint PK_REPARACIONES primary key (ID_REPARACION)
);


create table SERVICIO 
(
   ID_SERVICIO          NUMBER(12)           not null,
   SERVICIO             VARCHAR2(12),
   constraint PK_SERVICIO primary key (ID_SERVICIO)
);


create table TELEFONO 
(
   ID_TELEFONO          NUMBER(12)           not null,
   NOMERO_TELEFONO      VARCHAR2(50),
   EMPRESA_TELEFONICA   VARCHAR2(50),
   constraint PK_TELEFONO primary key (ID_TELEFONO)
);


create table TIPO_CLIENTE 
(
   ID_TIPO_CLIENTE      NUMBER(12)           not null,
   TIPO_CLIENTE         VARCHAR2(60),
   constraint PK_TIPO_CLIENTE primary key (ID_TIPO_CLIENTE)
);


create table TIPO_DOCUMENTO 
(
   ID_DOCUMENTO         NUMBER(12)           not null,
   DOCUMENTO            VARCHAR2(40),
   constraint PK_TIPO_DOCUMENTO primary key (ID_DOCUMENTO)
);


create table TIPO_EMAIL 
(
   ID_TIPO_EMAIL        NUMBER(12)           not null,
   TIPO_EMAIL           VARCHAR2(50),
   constraint PK_TIPO_EMAIL primary key (ID_TIPO_EMAIL)
);


create table TIPO_ESTADO 
(
   ID_TESTADO           NUMBER(12)           not null,
   TIPO_ESTADO          VARCHAR2(45),
   constraint PK_TIPO_ESTADO primary key (ID_TESTADO)
);


create table TIPO_GARANTIA 
(
   ID_TIPO_GARANTIA     NUMBER(12)           not null,
   TIPO_GARANTIA        VARCHAR2(60),
   constraint PK_TIPO_GARANTIA primary key (ID_TIPO_GARANTIA)
);


create table TIPO_IMPUESTO 
(
   ID_IMPUESTO          VARCHAR2(12)         not null,
   TIPO_IMPUESTO        VARCHAR2(80),
   constraint PK_TIPO_IMPUESTO primary key (ID_IMPUESTO)
);


create table TIPO_REPARACION 
(
   ID_REPACION          NUMBER(12)           not null,
   REPARACION           VARCHAR2(12),
   constraint PK_TIPO_REPARACION primary key (ID_REPACION)
);


create table TIPO_TELEFONO 
(
   ID_TELEFONO          NUMBER(12)           not null,
   TIPO_TELEFONO        VARCHAR2(50),
   constraint PK_TIPO_TELEFONO primary key (ID_TELEFONO)
);


create table TIPO_TURNO 
(
   ID_TIPO_TURNO        NUMBER(12)           not null,
   TIPO_TURNO           VARCHAR2(80),
   constraint PK_TIPO_TURNO primary key (ID_TIPO_TURNO)
);


create table TIPO_USUARIO 
(
   ID_TIPO_USUARIO      NUMBER(12)           not null,
   TIPO_USUARIO         VARCHAR2(60),
   DESCRIPCION          VARCHAR2(60),
   constraint PK_TIPO_USUARIO primary key (ID_TIPO_USUARIO)
);


create table TIPO_VENTA 
(
   ID_TIPO_VENTA        NUMBER(12)           not null,
   TIPO_VENTA           VARCHAR2(60),
   DESCRIP_VENTA        VARCHAR2(120),
   constraint PK_TIPO_VENTA primary key (ID_TIPO_VENTA)
);


create table TURNO 
(
   ID_TIPO_TURNO        NUMBER(12),
   ID_USUARIO           NUMBER(12),
   ID_TURNO             NUMBER(12)           not null,
   FECHA                DATE,
   HORA                 TIMESTAMP,
   constraint PK_TURNO primary key (ID_TURNO)
);


create table UNIDAD_MEDIDA 
(
   ID_UNIDAD_MEDIDA     NUMBER(12)           not null,
   NOMBRE_UNIDAD_MEDIDA VARCHAR2(20),
   CANTIDAD_UNIDAD_MEDIDA NUMBER(12),
   constraint PK_UNIDAD_MEDIDA primary key (ID_UNIDAD_MEDIDA)
);


create table USUARIO 
(
   ID_USUARIO           NUMBER(12)           not null,
   ID_TIPO_USUARIO      NUMBER(12),
   ID_PERSONA           NUMBER(12),
   LOGIN                VARCHAR2(60),
   PASSWORD             VARCHAR2(60),
   FECHA_ALTA           DATE,
   FECHA_BAJA           DATE,
   constraint PK_USUARIO primary key (ID_USUARIO)
);


create table VENTA 
(
   ID_VENTA             NUMBER(12)           not null,
   ID_TIPO_VENTA        NUMBER(12),
   ID_CLIENTE           NUMBER(12),
   constraint PK_VENTA primary key (ID_VENTA)
);