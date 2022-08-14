CREATE TABLE Historial (
    ID_Historial INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATETIME,
    Perro TEXT (255),
    Descripcion text(255),
    Monto decimal,
CONTRAINT fk_Historial_Perro1 FOREIGN KEY (Perro_ID_Perro) REFERENCES (ID_Perro,dueno_DNI)
)

CREATE TABLE Dueno (
    DNI char(8),
    Apellido varchar(255),
    Nombre varchar (255),
    Direccion varchar(255),
    Telefono varchar(20),
    PRIMARY KEY('DNI')
)

CREATE TABLE Perro (
    ID_Perro INT IDENTITY(1,1) PRIMARY KEY,
    Nombre varchar (255),
    Fecha_nac DATETIME,
    Sexo text(1),
    DNI_Dueno char(8),
CONTRAINT fk_perro_dueno FOREIGN KEY (Dueno_DNI) REFERENCES Dueno(DNI)
)

