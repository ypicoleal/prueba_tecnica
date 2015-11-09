--
-- triggers cliente
--

DROP TRIGGER IF EXISTS log_create_cliente;
delimiter |
CREATE TRIGGER log_create_cliente AFTER INSERT ON tienda_cliente 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se agrego un nuevo cliente con nombre="', NEW.nombres, '" y documento=', NEW.documento));
    END;
|

DROP TRIGGER IF EXISTS log_update_cliente;
delimiter |
CREATE TRIGGER log_update_cliente AFTER UPDATE ON tienda_cliente 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se edito el cliente con nombre="', OLD.nombres, '", documento=', OLD.documento, ' y id=', OLD.id));
    END;
|

DROP TRIGGER IF EXISTS log_delete_cliente;
delimiter |
CREATE TRIGGER log_delete_cliente BEFORE DELETE ON tienda_cliente 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se elimino el cliente con nombre="', OLD.nombres, '", documento=', OLD.documento, ' y id=', OLD.id));
    END;
|

--
-- triggers producto
--

DROP TRIGGER IF EXISTS log_create_producto;
delimiter |
CREATE TRIGGER log_create_producto AFTER INSERT ON tienda_producto 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se agrego un nuevo producto con producto="', NEW.producto, '" y precio=', NEW.precio));
    END;
|

DROP TRIGGER IF EXISTS log_update_producto;
delimiter |
CREATE TRIGGER log_update_producto AFTER UPDATE ON tienda_producto 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se edito el producto con producto="', OLD.producto, '", precio=', OLD.precio, ' y id=', OLD.id));
    END;
|

DROP TRIGGER IF EXISTS log_delete_producto;
delimiter |
CREATE TRIGGER log_delete_producto BEFORE DELETE ON tienda_producto 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se elimino el cliente con producto="', OLD.producto, '", precio=', OLD.precio, ' y id=', OLD.id));
    END;
|

--
-- triggers sede
--

DROP TRIGGER IF EXISTS log_create_sede;
delimiter |
CREATE TRIGGER log_create_sede AFTER INSERT ON tienda_sede
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se agrego un nueva sede con sede="', NEW.sede, '" y direccion=', NEW.direccion));
    END;
|

DROP TRIGGER IF EXISTS log_update_sede;
delimiter |
CREATE TRIGGER log_update_sede AFTER UPDATE ON tienda_sede 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se edito la sede con sede="', OLD.sede, '", direccion=', OLD.direccion, ' y id=', OLD.id));
    END;
|

DROP TRIGGER IF EXISTS log_delete_sede;
delimiter |
CREATE TRIGGER log_delete_sede BEFORE DELETE ON tienda_sede 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se elimino la sede con sede="', OLD.sede, '", direccion=', OLD.direccion, ' y id=', OLD.id));
    END;
|

--
-- triggers compra
--

DROP TRIGGER IF EXISTS log_create_compra;
delimiter |
CREATE TRIGGER log_create_compra AFTER INSERT ON tienda_compra
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se agrego una nueva compra con cliente_id="', NEW.cliente_id, '" y producto_id=', NEW.producto_id));
    END;
|

DROP TRIGGER IF EXISTS log_update_compra;
delimiter |
CREATE TRIGGER log_update_compra AFTER UPDATE ON tienda_compra 
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se edito la compra con cliente_id="', OLD.cliente_id, '", producto_id=', OLD.producto_id, ' y id=', OLD.id));
    END;
|

DROP TRIGGER IF EXISTS log_delete_compra;
delimiter |
CREATE TRIGGER log_delete_compra BEFORE DELETE ON tienda_compra
	FOR EACH ROW 
    BEGIN
		INSERT INTO log (fecha, descripcion) values (NOW(), CONCAT('se elimino la compra con cliente_id="', OLD.cliente_id, '", direccion=', OLD.producto_id, ' y id=', OLD.id));
    END;
|