CREATE TABLE Categoria (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL
);
CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    marca TEXT NOT NULL,
    categoria_id INTEGER NOT NULL,
    precio_unitario REAL NOT NULL,
    FOREIGN KEY(categoria_id) REFERENCES Categoria(id)
);
CREATE TABLE Sucursal (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    direccion TEXT NOT NULL
);
CREATE TABLE Stock (
    id SERIAL PRIMARY KEY,
    sucursal_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY(sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY(producto_id) REFERENCES Producto(id)
);
CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    telefono TEXT NOT NULL
);
CREATE TABLE Orden (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    sucursal_id INTEGER NOT NULL,
    fecha DATE NOT NULL,
    total REAL NOT NULL,
    FOREIGN KEY(cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY(sucursal_id) REFERENCES Sucursal(id)
);
CREATE TABLE Item (
    id SERIAL PRIMARY KEY,
    orden_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    monto_venta REAL NOT NULL,
    FOREIGN KEY(orden_id) REFERENCES Orden(id),
    FOREIGN KEY(producto_id) REFERENCES Producto(id)
);

