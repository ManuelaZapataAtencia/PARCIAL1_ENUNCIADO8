
CREATE TABLE Cliente (
  Id_Cliente INT NOT NULL,
  NombreCompleto VARCHAR(80) NOT NULL,
  NumeroTelefono VARCHAR(50) NOT NULL,
  Direccion VARCHAR(60) NOT NULL,
  FechaNacimiento DATE NOT NULL,
  Email VARCHAR(50) NOT NULL,
  FechaCreacion DATETIME NOT NULL,
  PRIMARY KEY (Id_Cliente)
);


CREATE TABLE Empleado(
	Id_Empleado INT NOT NULL,
	NombreCompletoE VARCHAR(80) NOT NULL,
	PRIMARY KEY (Id_Empleado)
);

CREATE TABLE Vehiculo (
  Id_Vehiculo INT IDENTITY(100,10),
  Marca VARCHAR(20) NOT NULL,
  Modelo VARCHAR(20) NOT NULL,
  Precio MONEY NOT NULL,
  Caracteristica VARCHAR(255) NOT NULL,
  PRIMARY KEY (Id_Vehiculo)
);

CREATE TABLE Conversacion (
  Id_Conversacion INT IDENTITY(1,1),
  Id_Cliente INT NOT NULL,
  Id_Empleado INT NOT NULL,
  Mensaje VARCHAR(255) NOT NULL,
  Fecha_Envio DATETIME NOT NULL,
  PRIMARY KEY (Id_Conversacion),
  FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente),
  FOREIGN KEY (Id_Empleado) REFERENCES Empleado (Id_Empleado)
);

CREATE TABLE Intereses(
	Id INT IDENTITY(1,1),
	id_Cliente INT NOT NULL,
	DescripcionInteres VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (id_Cliente) REFERENCES Cliente (Id_Cliente)
);


CREATE TABLE Compra(
	Id_Compra INT IDENTITY(1,1),
	FechaCompra DATETIME NOT NULL,
	ClienteId INT NOT NULL,
	VehiculoId INT NOT NULL,
	PRIMARY KEY (Id_Compra),
	FOREIGN KEY (ClienteId) REFERENCES Cliente (Id_Cliente),
	FOREIGN KEY (VehiculoId) REFERENCES Vehiculo (Id_Vehiculo)
);


INSERT INTO Empleado (Id_Empleado, NombreCompletoE)
VALUES
  (1, 'Juan Pérez'),
  (2, 'María Rodríguez'),
  (3, 'Carlos González');

  INSERT INTO Vehiculo (Marca, Modelo, Precio, Caracteristica)
VALUES
  ('Toyota', 'Corolla', 25000.00, 'Sedán, 4 puertas'),
  ('Honda', 'Civic', 23000.00, 'Sedán, 4 puertas'),
  ('Ford', 'Escape', 28000.00, 'SUV, 5 puertas');

