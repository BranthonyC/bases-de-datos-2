CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY,
    NombreProducto VARCHAR(100),
    Categoria VARCHAR(50),
    Precio DECIMAL(10, 2)
);

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    NombreCliente VARCHAR(100),
    Ciudad VARCHAR(50),
    FechaRegistro DATE
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    FechaPedido DATE,
    ClienteID INT,
    EmpleadoID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
);

CREATE TABLE DetallesPedido (
    DetalleID INT PRIMARY KEY,
    PedidoID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY,
    NombreEmpleado VARCHAR(100),
    Departamento VARCHAR(50)
);

