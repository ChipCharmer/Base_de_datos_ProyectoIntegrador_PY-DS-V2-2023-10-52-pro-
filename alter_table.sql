ALTER TABLE Producto
ADD CONSTRAINT fk_producto_categoria
FOREIGN KEY (categoria_id) REFERENCES Categoria(id);

ALTER TABLE Stock
ADD CONSTRAINT fk_stock_sucursal
FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
ADD CONSTRAINT fk_stock_producto
FOREIGN KEY (producto_id) REFERENCES Producto(id);

ALTER TABLE Orden
ADD CONSTRAINT fk_orden_cliente
FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
ADD CONSTRAINT fk_orden_sucursal
FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id);

ALTER TABLE Item
ADD CONSTRAINT fk_item_orden
FOREIGN KEY (orden_id) REFERENCES Orden(id),
ADD CONSTRAINT fk_item_producto
FOREIGN KEY (producto_id) REFERENCES Producto(id);
