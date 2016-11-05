alter table ALERTAS
   add constraint FK_ALERTAS_REFERENCE_EMAIL foreign key (ID_EMAIL)
      references EMAIL (ID_EMAIL);

alter table ALERTAS
   add constraint FK_ALERTAS_REFERENCE_TELEFONO foreign key (ID_TELEFONO)
      references TELEFONO (ID_TELEFONO);

alter table CAJA_RECEPTORA
   add constraint FK_CAJA_REC_REFERENCE_TURNO foreign key (ID_TURNO)
      references TURNO (ID_TURNO);

alter table CAJA_RECEPTORA
   add constraint FK_CAJA_REC_REFERENCE_VENTA foreign key (ID_VENTA)
      references VENTA (ID_VENTA);

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA);

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_TIPO_CLI foreign key (ID_TIPO_CLIENTE)
      references TIPO_CLIENTE (ID_TIPO_CLIENTE);

alter table CONTENIDO_ENVIO
   add constraint FK_CONTENID_REFERENCE_ENVIOS foreign key (ID_ENVIO)
      references ENVIOS (ID_ENVIO);

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_REFERENCE_PAIS foreign key (ID_PAIS)
      references PAIS (ID_PAIS);

alter table DESTINATARIO
   add constraint FK_DESTINAT_REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO);

alter table DESTINATARIO
   add constraint FK_DESTINAT_REFERENCE_NEGOCIO foreign key (ID_EMPRESA)
      references NEGOCIO (ID_EMPRESA);

alter table DETALLE_ENVIO
   add constraint FK_DETALLE__REFERENCE_PAQUETE foreign key (ID_PAQUETE)
      references PAQUETE (ID_PAQUETE);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_FACTURA foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_NEGOCIO foreign key (ID_EMPRESA)
      references NEGOCIO (ID_EMPRESA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_IMPUESTO foreign key (ID_IMPUESTO)
      references IMPUESTO (ID_IMPUESTO);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_PROMOCIO foreign key (ID_PROMOCION)
      references PROMOCION (ID_PROMOCION);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO);

alter table DETALLE_PAGO
   add constraint FK_DETALLE__REFERENCE_MODO_PAG foreign key (ID_MODO_PAGO)
      references MODO_PAGO (ID_MODO_PAGO);

alter table DETALLE_PAGO
   add constraint FK_DETALLE__REFERENCE_PAGO foreign key (ID_PAGO)
      references PAGO (ID_PAGO);

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_MUNICIPI foreign key (ID_MUNICIPIO)
      references MUNICIPIO (ID_MUNICIPIO);

alter table DOCUMENTO
   add constraint FK_DOCUMENT_REFERENCE_TIPO_DOC foreign key (TIP_ID_DOCUMENTO)
      references TIPO_DOCUMENTO (ID_DOCUMENTO);

alter table DOCUMENTO
   add constraint FK_DOCUMENT_REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION);

alter table DOCUMENTO
   add constraint FK_DOCUMENT_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA);

alter table EMAIL
   add constraint FK_EMAIL_REFERENCE_TIPO_EMA foreign key (ID_TIPO_EMAIL)
      references TIPO_EMAIL (ID_TIPO_EMAIL);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_DETALLE_ foreign key (ID_DETALLE_ENVIO)
      references DETALLE_ENVIO (ID_DETALLE_ENVIO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_DESTINAT foreign key (ID_DESTINATARIO)
      references DESTINATARIO (ID_DESTINATARIO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_MANEJO foreign key (ID_MANEJO)
      references MANEJO (ID_MANEJO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_ALERTAS foreign key (ID_ALERTA)
      references ALERTAS (ID_ALERTA);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_MAN_ESTA foreign key (ID_ESTADO)
      references MAN_ESTADOS (ID_ESTADO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO);

alter table ENVIOS
   add constraint FK_ENVIOS_REFERENCE_DEVOLUCI foreign key (ID_DEVOLUCION)
      references DEVOLUCIONES (ID_DEVOLUCION);

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE);

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_MAN_ESTA foreign key (ID_ESTADO)
      references MAN_ESTADOS (ID_ESTADO);

alter table GARANTIA
   add constraint FK_GARANTIA_REFERENCE_TIPO_GAR foreign key (ID_TIPO_GARANTIA)
      references TIPO_GARANTIA (ID_TIPO_GARANTIA);

alter table GARANTIA
   add constraint FK_GARANTIA_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE);

alter table GARANTIA
   add constraint FK_GARANTIA_REFERENCE_PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO);

alter table IMPUESTO
   add constraint FK_IMPUESTO_REFERENCE_TIPO_IMP foreign key (TIP_ID_IMPUESTO)
      references TIPO_IMPUESTO (ID_IMPUESTO);

alter table KARDEX
   add constraint FK_KARDEX_REFERENCE_MOVIMIEN foreign key (ID_MOVIMIENTO)
      references MOVIMIENTO (ID_MOVIMIENTO);

alter table KARDEX
   add constraint FK_KARDEX_REFERENCE_PROVEEDO foreign key (ID_PROVEEDOR)
      references PROVEEDOR (ID_PROVEEDOR);

alter table KARDEX
   add constraint FK_KARDEX_REFERENCE_PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO);

alter table MAN_ESTADOS
   add constraint FK_MAN_ESTA_REFERENCE_TIPO_EST foreign key (ID_TESTADO)
      references TIPO_ESTADO (ID_TESTADO);

alter table MUNICIPIO
   add constraint FK_MUNICIPI_REFERENCE_DEPARTAM foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO);

alter table NEGOCIO
   add constraint FK_NEGOCIO_REFERENCE_DOCUMENT foreign key (ID_DOCUMENTO)
      references DOCUMENTO (ID_DOCUMENTO);

alter table NEGOCIO
   add constraint FK_NEGOCIO_REFERENCE_EMAIL foreign key (ID_EMAIL)
      references EMAIL (ID_EMAIL);

alter table NEGOCIO
   add constraint FK_NEGOCIO_REFERENCE_TELEFONO foreign key (ID_TELEFONO)
      references TELEFONO (ID_TELEFONO);

alter table PAGO
   add constraint FK_PAGO_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE);

alter table PAQUETE
   add constraint FK_PAQUETE_REFERENCE_ID_TIPO_ foreign key (ID_TIPO_PAQUETE)
      references ID_TIPO_PAQUETE (ID_TIPO_PAQUETE);

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_EMAIL foreign key (ID_EMAIL)
      references EMAIL (ID_EMAIL);

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_TELEFONO foreign key (ID_TELEFONO)
      references TELEFONO (ID_TELEFONO);

alter table PRODUCTO
   add constraint FK_PRODUCTO_REFERENCE_UNIDAD_M foreign key (ID_UNIDAD_MEDIDA)
      references UNIDAD_MEDIDA (ID_UNIDAD_MEDIDA);

alter table PRODUCTO
   add constraint FK_PRODUCTO_REFERENCE_CATEGORI foreign key (ID_TIPO_PRODUCTO)
      references CATEGORIA_PRODUCTO (ID_TIPO_PRODUCTO);

alter table PROMOCION
   add constraint FK_PROMOCIO_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE);

alter table PROVEEDOR
   add constraint FK_PROVEEDO_REFERENCE_TELEFONO foreign key (ID_TELEFONO)
      references TELEFONO (ID_TELEFONO);

alter table PROVEEDOR
   add constraint FK_PROVEEDO_REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION);

alter table PROVEEDOR
   add constraint FK_PROVEEDO_REFERENCE_EMAIL foreign key (ID_EMAIL)
      references EMAIL (ID_EMAIL);

alter table REMITENTE
   add constraint FK_REMITENT_REFERENCE_NEGOCIO foreign key (ID_EMPRESA)
      references NEGOCIO (ID_EMPRESA);

alter table REMITENTE
   add constraint FK_REMITENT_REFERENCE_FACTURA foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA);

alter table REMITENTE
   add constraint FK_REMITENT_REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO);

alter table REMITENTE
   add constraint FK_REMITENT_REFERENCE_CONTENID foreign key (ID_CONTENIDO_ENVIO)
      references CONTENIDO_ENVIO (ID_CONTENIDO_ENVIO);

alter table REPARACIONES
   add constraint FK_REPARACI_REFERENCE_TIPO_REP foreign key (ID_REPACION)
      references TIPO_REPARACION (ID_REPACION);

alter table REPARACIONES
   add constraint FK_REPARACI_REFERENCE_GARANTIA foreign key (ID_GARANTIA)
      references GARANTIA (ID_GARANTIA);

alter table TELEFONO
   add constraint FK_TELEFONO_REFERENCE_TIPO_TEL foreign key (ID_TELEFONO)
      references TIPO_TELEFONO (ID_TELEFONO);

alter table TURNO
   add constraint FK_TURNO_REFERENCE_TIPO_TUR foreign key (ID_TIPO_TURNO)
      references TIPO_TURNO (ID_TIPO_TURNO);

alter table TURNO
   add constraint FK_TURNO_REFERENCE_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO);

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_TIPO_USU foreign key (ID_TIPO_USUARIO)
      references TIPO_USUARIO (ID_TIPO_USUARIO);

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA);

alter table VENTA
   add constraint FK_VENTA_REFERENCE_TIPO_VEN foreign key (ID_TIPO_VENTA)
      references TIPO_VENTA (ID_TIPO_VENTA);

alter table VENTA
   add constraint FK_VENTA_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
references CLIENTE (ID_CLIENTE);