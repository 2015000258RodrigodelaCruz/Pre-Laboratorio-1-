CREATE DATABASE FIXO_sa; 
use FIXO_sa;	

Create table Direccion( 			
	idDireccion int primary key,
    Direccion varchar(45),
	Ciudad varchar(45),
    Pais varchar(45)
);

INSERT INTO Direccion(idDireccion, 
Direccion,
Ciudad, 
Pais
 ) 
values
(1,'Zona 18','Guatemala','Guatemala'),
(2,'Zona 1','Villa Nueva','Guatemala'),
(3,'Zona 3','Guatemala','Guatemala'),
(4,'Zona 1','Mixco','Guatemala'),
(5,'Zona 16','Guatemala','Guatemala');

Create table Cliente(		
	idCliente INT PRIMARY KEY,
    Nombre VARCHAR(45),
    Apellido VARCHAR(45),
    Edad INT(11),
    Direccion_idDireccion INT(11),
    FOREIGN KEY (Direccion_idDireccion) REFERENCES Direccion(idDireccion)																																													
);

INSERT INTO Cliente(
idCliente,
Nombre,
Apellido,
Edad, 
Direccion_idDireccion
) 
values
(1,'Juan','Molina','55','5'),
(2,'Marcos','Mapuhr','11','4'),
(3,'pepe','sech','25','3'),
(4,'Darius','pork','22','2'),
(5,'Juliana','pepe','19','1');

Create table categoria( 
	idCategoria int primary key,
    Nombre varchar(45)
);

INSERT INTO Categoria(idCategoria, Nombre) 
values
	(1,'Ciencia Ficción'),
	(2,'Accion'),
	(3,'Comedia'),
	(4,'Comedia'),
	(5,'Familiar'); 
    
CREATE TABLE Peliculas ( 
    idPeliculas INT PRIMARY KEY,
    Nombre VARCHAR(45),
    Duracion INT(11),
    Descripcion TEXT,
    Año INT(11),
    Categoria_idCategoria INT,
    FOREIGN KEY (Categoria_idCategoria) REFERENCES categoria(idCategoria)
);

INSERT INTO Peliculas(
idPeliculas,
Nombre,
Duracion,
Descripcion,
Año,
Categoria_idCategoria
)
values
(1,'StarWars III','220','Seducido por el lado oscuro, Anakin Skywalker se rebela contra su mentor, Obi-Wan Kenobi, y se convierte en Darth Vader.','2005',1),
(2,'SuperMan','230',' El joven Clark Kent debe convertirse en un héroe y salvar a las personas que ama.','2013',4),
(3,'POKEMON1','96','Ash y sus compañeros Pokémon se enfrentan a una criatura clonada que le ha declarado la guerra a sus oponentes.','1998',3),
(4,'Los Simpson la pelicula','127','Homero y su puerco mascota provocan un desastre que amenaza no solo a Springfield, sino al mundo entero.','2007',2),
(5,'Buscando a Nemo','140','Un buzo atrapa a Nemo, y ahora su padre deberá embarcarse en aventura por las aguas australianas para encontrarlo.','2003',5);

CREATE TABLE Inventario (
    idCopiasPeliculas INT PRIMARY KEY,
    Peliculas_idPeliculas INT,
    Disponible TINYINT,
    FOREIGN KEY (Peliculas_idPeliculas) REFERENCES Peliculas(idPeliculas)
);

INSERT INTO Inventario(
idCopiasPeliculas,
Peliculas_idPeliculas,
Disponible)
values
(1, 1, 4),
(2, 2, 7),
(3, 3, 5),
(4, 4, 3),
(5, 5, 4);

CREATE TABLE Renta (
    idRenta INT PRIMARY KEY,
    Fecha_Renta DATE,
    Fecha_Entrega DATE,
    Inventario_idCopiasPeliculas INT,
    Cliente_idCliente INT,
    FOREIGN KEY (Inventario_idCopiasPeliculas) REFERENCES Inventario(idCopiasPeliculas), 
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);
INSERT INTO Renta(idRenta,
Fecha_Renta,
Fecha_Entrega,
Inventario_idCopiasPeliculas,
Cliente_idCliente)
values
    (1,'2025-03-28','2025-04-01',1,1),
    (2,'2025-01-01','2025-01-07',2,2),
    (3,'2025-04-22','2025-04-29',3,3),
    (4,'2025-03-11','2025-03-22',4,4),
    (5,'2025-02-28','2025-03-03',5,5);
    
CREATE TABLE Clasificacion(
id_clasificacion Int primary key,
Clasificacion varchar(10),
Edades varchar(30),
Motivo Text,
Peliculas_idPeliculas INT,
idPeliculas INT,
FOREIGN KEY (Peliculas_idPeliculas) REFERENCES Peliculas(idPeliculas)
);
INSERT INTO Clasificacion(
id_clasificacion,
Clasificacion,
Edades,
Motivo,
Peliculas_idPeliculas,
idPeliculas
)
values
(1,'pg-13','mayores a 13','Violencia',1,1),
(2,'pg-13','mayores a 13',' Violencia',2,2),
(3,'G','Apto para todo publico','Pelicula para niños',3,3),
(4,'pg-13','mayores de 13','Violencia, uso de sustancias',4,4),
(5,'G','Apto para todo publico','Pelicula para niños',5,5);

CREATE TABLE MetodoDePago(
id_Metodo Int primary key,
MontoACobrar int(10),
Nit varchar(15),
Cliente_idCliente INT,
FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);
INSERT INTO MetodoDePago(
id_Metodo,
MontoACobrar,
Nit,
Cliente_idCliente
)
values
(1,'100','123 456 789',1),
(2,'200','987 654 321',2),
(3,'150','123 987 456',3),
(4,'100','135 791 345',4),
(5,'200','246 824 975',5);



