
	#####		TABLAS		#####

CREATE TABLE empleado (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    apellido1 VARCHAR(60) NOT NULL,
    apellido2 VARCHAR(60) NOT NULL,
    dni INT NOT NULL,
    fecha_nac DATE NOT NULL,
    direccion VARCHAR(60) NOT NULL,
    sexo VARCHAR(60) NOT NULL,
    sueldo DECIMAL(8, 2) NOT NULL,  
    super_dni INT NOT NULL,
    dno INT NOT NULL
);
 select * from empleado;
 
 
 
CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre_dpto VARCHAR(60) NOT NULL,
    numero_dpto INT NOT NULL,
    dni_director int not null,
    fecha_ingreso_director DATE NOT NULL
);
 select * from departamento;
 
 
 
CREATE TABLE localizaciones_dpto (
    id_localizaciones_dpto INT PRIMARY KEY AUTO_INCREMENT,
    numero_dpto INT NOT NULL,
    ubicacion_dpto VARCHAR(100) NOT NULL
);
 select * from localizaciones_dpto;
 
 
 
CREATE TABLE trabaja_en (
    id_trabaja_en INT PRIMARY KEY AUTO_INCREMENT,
    dni_empleado INT NOT NULL,
    num_prov INT NOT NULL,
    horas DECIMAL(5, 2) NOT NULL
);
 select * from trabaja_en;
 
 
 
CREATE TABLE proyecto (
    id_proyecto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_proyecto VARCHAR(100) NOT NULL,
    numero_proyecto INT NOT NULL,
    ubicacion_proyecto VARCHAR(100) NOT NULL,
    num_dpto_proyecto INT NOT NULL
);
 select * from proyecto;
 
 
 
CREATE TABLE subordinado (
    id_subordinado INT PRIMARY KEY AUTO_INCREMENT,
    dni_empleado Int not null,
    nombre_subordinado VARCHAR(100) NOT NULL,
    sexo VARCHAR(100) NOT NULL,
    fecha_nac DATE NOT NULL,
    relacion VARCHAR(100) NOT NULL
);
 select * from subordinado;
 
 
 
 
	#####		DATOS		#####
 
INSERT INTO empleado (nombre, apellido1, apellido2, dni, fecha_nac, direccion, sexo, sueldo, super_dni, dno)

VALUES 
('Jose', 'Perez', 'Perez', 123456789, '1965-09-01', 'Eloy L,9B', 'H', 30000.00, 333445555, 5),
('Alberto', 'Campos', 'Sastre', 333445555, '1955-09-01', 'Avda Rios,9', 'H', 40000.00, 333445555, 5),
('Alicia', 'Jimenez', 'Celaya', 999887777, '1968-05-12', 'Gran Vila 38', 'M', 25000.00, 333445555, 5),
('Juana', 'Sainz', 'Oreja', 987654321, '1941-06-20', 'Cerquillas, 67', 'M', 43000.00, 333445555, 5),
('Fernando', 'Ojeda', 'Ordoñez', 066884444, '1962-09-15', 'Portillo, s/n', 'H', 38000.00, 333445555, 5),
('Aurora', 'Olivia', 'Avezuela', 453453453, '1972-07-31', 'Anton, 6', 'M', 25000.00, 333445555, 5),
('Luis', 'Pajares', 'Morena', 987987987, '1969-03-29', 'Enebros, 90', 'H', 25000.00, 333445555, 5),
('Eduardo', 'Ochoa', 'Paredes', 888665555, '1937-11-10', 'Las Peñas, 1', 'H', 55000.00, 333445555, 5);
 
INSERT INTO departamento (nombre_dpto, numero_dpto, dni_director, fecha_ingreso_director)
VALUES
('Investigacion', 5, 333445555, '1988-05-22'),
('Administracion', 4, 987654321, '1995-01-01'),
('Investigacion', 1, 888665555, '1981-06-19');
 
INSERT INTO localizaciones_dpto (numero_dpto, ubicacion_dpto)
VALUES
(1, 'Madrid'),
(4, 'Gijon'),
(5, 'Valencia'),
(5, 'Sevilla'),
(5, 'Madrid');
 
INSERT INTO trabaja_en (dni_empleado, num_prov,horas)
VALUES
(123456789, 1,32.5),
(123456789, 2,7.5),
(666884444, 3,40.0),
(453453453, 1,20.0), 
(453453453, 1,20.0),
(333445555, 2,10.0);
 
 
INSERT INTO subordinado (dni_empleado, nombre_subordinado, sexo, fecha_nac,relacion)
VALUES
(333445555, 'Alicia', 'M', '1986-04-05','Hija'),
(333445555, 'Teodoro', 'H', '1986-04-05','Hijo'),
(333445555, 'Luisa', 'M', '1958-05-03','Esposa'),
(987654321, 'Alfonso', 'h', '1958-04-05','Esposo'),
(123456789, 'Miguel', 'h', '1942-04-05','Hijo'),
(123456789, 'Alicia', 'M', '1968-04-05','Hija'),
(123456789, 'Elisa', 'M', '1967-04-05','Esposa');