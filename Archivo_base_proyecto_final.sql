
--Iniciamos definiendo las tablas principales
--Para luego alterar las tablas e ingresar las llaves foraneas
Create table persona(
id_persona number(12) not null,
apellido_paterno varchar2(25),
apellido_materno varchar2(30),
primer_nombre varchar2(35),
Segundo_nombre varchar2(25),
sexo char(2),
edad date,
constraint pk_Persona primary key(id_persona);
):

Create table cliente(
id_cliente number(12),
constraint pk_cliente primary key(id_cliente);
);

Create table tipo_cliente(
id_tipo_cliente number(12),
tipo_cliente varchar2(60)
constraint pk_tipo_cliente primary key (id_tipo_cliente)
);

create table proveedor(
id_proveedor number(12),
nombre_empresa varchar2(50),
constraint pk_id_proveedor primary key(id_proveedor)
);

create table usuario(
id_usuario number(12),
login varchar2(60),
password varchar2(60),
fecha_alta date,
fecha_baja date,
constraint pk_id_usuario primary key(id_usuario)
);

create table tipo_usuario(
id_tipo_usuario number(12),
tipo_usuario varchar2(60),
Descripcion varchar2(60),
constraint pk_tipo_usuario primary key(id_tipo_usuario)
);

create table producto(
id_producto number(12),
nombre_producto varchar2(40),
cantidad_minima number(12),
cantidad_maxima number(12),
existencia_producto number(12),
precio_costo_producto number(12),
precio_venta_producto number(12),
activo_producto number(12),
constraint pk_id_producto primary key (id_producto)
);

create table categoria_producto(
id_tipo_producto number(12),
categoria_producto varchar2(25),
constraint pk_id_tipo_producto primary key (id_tipo_producto)
);

create table unidad_medida (
id_unidad_medida number(12),
number_unidad_medida varchar2(20),
cantidad_unidad_medida number(12),
constraint pk_id_unidad_medida primary key(id_unidad_medida)
);

create table kardex(
id_kardex number(12),
precio_compra double precision,
precio_venta double precision,
stock_anterior number(12),
stock_actual number(12),
tipo varchar2(10),
cantidad number(12),
constraint pk_id_kardex primary key(id_kardex)
);

create table movimiento (
id_movimiento number(12),
factura varchar2(60),
fecha_factura date,
fecha_salida timestamp,
responsable varchar2(60),
tipo_movimiento varchar2(60),
movimiento varchar2(60),
constraint pk_id_movimiento primary key(id_movimiento)
);

create table tipo_venta(
id_tipo_venta number(12),
tipo_venta varchar2(60),
Descrip_venta varchar2(120),
constraint pk_id_tipo_venta primary key(id_tipo_venta)
);

create table venta(
id_venta number(12),
constraint pk_id_venta primary key(id_venta)
);

create table caja_receptora (
id_caja_receptora number(12),
saldo_inicial double precision,
saldo_final double precision,
fecha date,
hora_apertura timestamp,
hora_cierre timestamp,
constraint pk_id_caja_receptora primary key (id_caja_receptora)
);

create table turno(
id_turno number(12),
fecha date,
hora timestamp,
constraint pk_id_turno primary key(id_turno)
);

create table tipo_turno(
id_tipo_turno number(12),
tipo_turno varchar2(80),
constraint pk_id_tipo_turno primary key (id_tipo_turno)
);

create table promocion(
id_promocion number(12),
tipo varchar2(80),
costo double precision,
inicio_promo date,
fin_promo date,
estado_promo varchar2(30),
descrip_promo varchar2(120),
constraint pk_id_promocion primary key(id_promocion)
);

create table factura (
id_factura number(12),
fecha timestamp,
constraint pk_id_factura primary key (id_factura)
);

create table detalle_factura(
id_detalle_factura number(12),
precio number(12),
descuento number(12),
total number(12),
constraint pk_id_detalle_factura primary key (id_detalle_factura)
);

create table pago (
id_pago number(12),
fecha timestamp,
monto_total double precision,
constraint pk_id_pago primary key(id_pago)
);

create table detalle_pago (
id_detalle_pago number(12),
monto double precision,
constraint pk_id_detalle_pago primary key(pk_id_detalle_pago)
);

create table modo_pago(
id_modo_pago number(12),
modo_pago varchar2(80),
constraint pk_id_modo_pago primary key (id_modo_pago)
);

create table documento(
id_documento number(50),
constraint pk_id_documento primary key (id_documento)
);

create table tipo_documento(
id_tipo_documento number(12),
documento varchar2(40),
constraint pk_id_tipo_documento primary key (id_tipo_documento)
);

create table pais(
id_pais number(12),
pais varchar2(60),
constraint pk_id_pais primary key (id_pais)
);

create table departamento(
id_departamento number(12),
departamento varchar2(60),
constraint pk_id_pais primary key (id_departamento)
);

create table municipio(
id_municipio number(12),
municipio varchar2(60),
constraint pk_id_pais primary key (id_municipio)
);

create table direccion(
id_direccion number(12),
direccion varchar2(50),
codigo_postal number(12),
constraint pk_id_direccion primary key (id_direccion)
);

create table telefono(
id_telefono number(12),
numero_telefono varchar2(50),
empresa_telefonica varchar2(50),
constraint pk_id_telefono primary key (id_telefono)
);

create table tipo_telefono(
id_tipo_telefono number(12),
tipo_telefono varchar2(50),
constraint pk_id_tipo_telefono primary key (id_tipo_telefono)
);

create table email(
id_email number(12),
direccion_email varchar2(60),
empresa_email varchar2(80),
constraint pk_id_email primary key (id_email)
);

create table tipo_email(
id_tipo_email number(12),
tipo_email varchar2(50),
constraint pk_id_tipo_email primary key (id_tipo_email)
);

create table impuesto (
id_impuesto number(12),
impuesto number(12),
constraint pk_id_impuesto primary key (id_impuesto)
);

create table tipo_impuesto (
id_tipo_impuesto number(12),
tipo_impuesto varchar2(80),
constraint pk_id_tipo_impuesto primary key (id_tipo_impuesto)
);

create table envios(
id_envio number(12),
envio varchar2(45),
fecha date,
constraint pk_id_envio primary key (id_envio)
);

create table detalle_envio(
id_detalle_envio number(12),
fecha_envio date,
embalaje varchar2(50),
peso_total number(12),
valor_transporte number(12),
costo_estimado number(12),
referencia varchar2(90),
constraint pk_id_detalle_envio primary key(id_detalle_envio)
);

create table servicio (
id_servicio number(12),
servicio varchar2(60),
constraint pk_id_servicio primary key(id_servicio)
);

create table manejo (
id_manejo number(12),
manejo varchar2(60),
constraint pk_id_manejo primary key (id_manejo)
);

create table alertas(
id_alerta number(12),
alerta varchar2(50),
constraint pk_id_alerta primary key(id_alerta)
);

create table paquete(
id_paquete number(12),
paquete varchar2(60),
constraint pk_id_paquete primary key (id_paquete)
);

create table tipo_paquete (
id_tipo_paquete number(12),
tipo_paquete varchar2(60),
largo number(12),
ancho number(12),
profundida number(12),
peso number(12),
constraint pk_id_tipo_paquete primary key(id_tipo_paquete)
);

create table contenido_envio(
id_contenido_envio number(12),
contenido varchar2(40),
constraint pk_id_contenido_envio primary key (id_contenido_envio)
);

create table destinatario(
id_destinatario number(12),
constraint pk_id_destinatario primary key (id_destinatario)
);

create table devoluciones(
id_devoluciones number(12),
devolucion varchar2(65),
descripcion varchar2(75),
constraint pk_id_devoluciones primary key(id_devoluciones)
);

create table man_estados(
id_estado number(12),
estado varchar2(45),
constraint pk_id_estado primary key (id_estado)
);

create table tipo_estado(
id_tipo_estado number(12),
tipo_estado varchar2(45),
constraint pk_id_tipo_estado primary key(id_tipo_estado)
);

create table garantia (
id_garantia number(12),
garantia varchar2(60),
fecha_inicia_g date,
fecha_fin_g date,
descripcion varchar2(60),
observaciones varchar2(190),
constraint pk_id_garantia primary key (id_garantia)
);

create table tipo_garantia(
id_tipo_garantia number(12),
tipo_garantia varchar2(60),
constraint pk_tipo_garantia primary key(id_tipo_garantia)
);

create table reparaciones(
id_reparacion number(12),
reparacion varchar2(60),
descripcion varchar2(60),
descripcion2 varchar2(190),
costo number(12),
fecha_recibo date,
fecha_entrega date,
constraint pk_id_reparacion primary key(id_reparacion)
);

create table tipo_reparacion(
id_tipo_reparacion number(12),
reparacion varchar2(50),
constraint pk_id_tipo_reparacion primary key(id_tipo_reparacion)
);

create table remitente(
id_remitente number(12),
constraint pk_id_remitente primary key(id_remitente)
);

create table negocio(
id_empresa number(12),
nombre varchar2(50),
constraint pk_id_empresa primary key(id_empresa)
);

--terminados con la creacion de las tablas

--iniciamos con las relaciones y a construir las llaves foraneas

alter table producto
   add constraint fk_producto_unidad_medida id_unidad_medida
      references unidad_medida (id_unidad_medida);

alter table producto
   add constraint fk_producto_categoria id_tipo_producto
      references categoria_producto (id_tipo_producto);

	alter table usuario
	add constraint fk_usuario_tipo_usuario id_tipo_usuario
	references tipo_usuario (id_tipo_usuario);

	alter table usuario 
	add constraint fk_usuario_persona id_persona
	references persona(id_persona);

alter table turno 
add constraint fk_turno_tipo_turno id_usuario
references usuario (id_usuario);

	alter table caja_receptora
	add constraint fk_caja_rec_turno id_turno
	references turno (id_turno);

	alter table caja_receptora
	add constraint fk_caja_rec_venta id_venta
	references venta(id_venta);

alter table venta
add constraint fk_venta_tipo_venta id_tipo_venta
references tipo_venta(id_tipo_venta);

alter table venta 
add constraint fk_venta_cliente id_cliente
references cliente (id_cliente);

	alter table proveedor
	add constraint fk_provee_telefono id_telefono
	refrences telefono(id_telefono);

	alter table proveedor
	add constraint fk_provee_direccion id_direccion
	references direccion(id_direccion);

	alter table proveedor
	add constraint fk_provee_email id_email
	references email(id_email);

alter table kardex
add constraint fk_kardex_movi id_movimiento
references movimiento (id_movimiento);

alter table kardex
add constraint fk_kardex_provee id_proveedor
references proveedor(id_proveedor);

alter table kardex
add constraint fk_kardex_producto id_producto
references producto(id_producto);

	alter table promocion
	add constraint fk_promo_clien id_cliente
	references cliente(id_cliente);

alter table factura
add constraint fk_factu_clien id_cliente
references cliente(id_cliente);

alter table factura
add constraint fk_factu_estado id_estado
references estado(id_estado);

	alter table clienete
	add constraint fk_clien_person id_persona
	references persona(id_persona);

	alter table clienete
	add constraint fk_clien_tip_per id_tipo_cliente
	references tipo_cliente(id_tipo_cliente);

alter table persona
add constraint fk_person_tel id_telefono
references telefono(id_telefono);

alter table persona
add constraint fk_person_email id_email
references email(id_email);

	alter table telefono
	add constraint fk_tel_tip_tel id_tipo_telefono
	references tipo_telefono(id_tipo_telefono);

alter table email
add constraint fk_email_tipo_email id_tipo_email
references tipo_email(id_tipo_email);

	alter table documento 
	add constraint fk_doc_tip_doc id_tipo_documento
	references tipo_documento(id_tipo_documento);

	alter table documento
	add constraint fk_doc_id_direc id_direccion
	references direccion(id_direccion);

	alter table documento 
	add constraint fk_doc_person id_persona
	references persona(id_persona);

	alter table documento
	add constraint fk_doc_id_tip_doc id_tipo_documento
	references tipo_documento(id_tipo_documento);

alter table detalle_factura
add constraint fk_det_fac_id_fac id_factura
references factura(id_factura);

alter table detalle_factura
add constraint fk_det_fac_id_prod id_producto
references producto(id_producto);

alter table detalle_factura
add constraint fk_det_fac_id_empre id_empresa
references negocio(id_empresa);

alter table detalle_factura
add constraint fk_det_fac_id_impu id_impuesto)
references impuesto(id_impuesto);

alter table detalle_factura
add constraint fk_det_fac_usua id_usuario
references usuario(id_usuario);

alter table detalle_factura
add constraint fk_det_fac_promo id_promocion
references promocion(id_promocion);

	alter table negocio
	add constraint fk_nego_doc id_documento
	references documento(id_documento);

	alter table negocio
	add constraint  fk_nego_email id_email
	references email(id_email);

	alter table negocio 
	add constraint fk_nego_tele id_telefono
	references telefono(id_telefono);

alter table departamento
add constraint fk_depto_pais id_pais
references pais(id_pais);

alter table municipio
add constraint fk_muni_depto id_departamento
references departamento(id_departamento);

alter table direccion
add constraint fk_direc_muni id_municipio
references municipio(id_municipio);

alter table pago 
add constraint fk_pago_idcliente id_cliente
references cliente (id_cliente);

alter table pago
add constraint fk_pago_detpago id_detalle_pago
references detalle_pago(id_detalle_pago);

alter table detalle_pago
add constraint fk_detpago_fpago id_modo_pago
references modo_pago(id_modo_pago);

alter table alertas
add constraint fk_alert_email id_email
references email (id_email);

alter table alertas 
add constraint fk_alert_tel id_telefono
references telefono(id_telefono);

alter table envios 
add constraint fk_envios_detenvio id_detalle_envio
references detalle_envio(id_detalle_envio);

alter table envios
add constraint fk_envios_destino id_destinatario
references destinatario(id_destinatario);

alter table envios
add constraint fk_envios_servicio id_servicio
references servicio(id_servicio);

alter table envios
add constraint fk_envios_manejo id_manejo
references manejo(id_manejo);

alter table envios
add constraint fk_envios_alerta id_alerta
references alertas(id_alerta);

alter table envios
add constraint fk_envios_usuario id_usuario
references usuario(id_usuario);

alter table envios
add constraint fk_envios_estado id_estado
references man_estado(id_estado);

alter table envios
add constraint fk_envios_direccion id_direccion
references direccion(id_direccion);

alter table envios
add constraint fk_envios_producto id_producto
references producto(id_producto);

alter table envios
add constraint fk_envios_devo id_devoluciones
references devoluciones(id_devoluciones);

alter table detalle_envio
add constraint fk_detenvio_paquete id_paquete
references paquete(id_paquete);

alter table paquete 
add constraint fk_paque_tip_paque id_tipo_paquete
references tipo_paquete (id_tipo_paquete);

alter table contenido_envio
add constraint fk_contenvio_envio id_envio
references envios(id_envio);

alter table destinatario
add constraint fk_destino_empresa id_empresa
references negocio(id_empresa);

alter table destinatario
add constraint fk_destino_usuario id_usuario
references usuario(id_usuario);

alter table man_estados
add constraint fk_man_tipestado id_tipo_estado
references tipo_estado(id_tipo_estado);

alter table garantia
add constraint fk_garan_tipgarantia id_tipo_garantia
references tipo_garantia(id_tipo_garantia);

alter table garantia
add constraint fk_garan_cliente id_cliente
references cliente(id_cliente);

alter table garantia
add constraint fk_garan_produc id_producto
references producto(id_producto)

alter table reparaciones
add constraint fk_repara_garan id_garantia
references garantia(id_garantia);

alter table reparaciones
add constraint fk_repara_tiprepacion id_tipo_reparacion
references tipo_reparacion(id_tipo_reparacion);




      