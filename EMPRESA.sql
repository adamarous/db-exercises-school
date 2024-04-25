CREATE TABLE CLIENTES
(IdClientes INTEGER PRIMARY KEY,
Empresa VARCHAR(30),
Direccion VARCHAR(30),
Ciudad VARCHAR(20),
Provincia VARCHAR(18),
Email VARCHAR(20),
Telefono VARCHAR(10),
Fax VARCHAR(10));

CREATE TABLE EMPLEADOS
(IdEmpleados INTEGER PRIMARY KEY,
Nombres VARCHAR(40),
ApellidoPat VARCHAR(15),
ApellidoMat VARCHAR(15),
Direccion VARCHAR(36),
Ciudad VARCHAR(18),
Provincia VARCHAR(20),
Email VARCHAR(20),
Telefono VARCHAR(10),
Beeper VARCHAR(12));

CREATE TABLE ORDENES
(NumOrden INTEGER PRIMARY KEY,
IdClientes INTEGER,
IdProductos INTEGER,
Cantidad INTEGER,
Fecha DATE);

CREATE TABLE PAGOSEMPLEADOS
(IdEmpleados INTEGER PRIMARY KEY,
Puesto VARCHAR(20),
FechaContrato DATE,
TasaPago DECIMAL(4,2),
Sueldo DECIMAL(8,2),
FechaUltiPago DATE,
Bono DECIMAL(5,2));

CREATE TABLE PRODUCTOS
(IdProductos INTEGER PRIMARY KEY,
Descripcion VARCHAR(30),
Costo DECIMAL(6,2));

ALTER TABLE ORDENES
ADD FOREIGN KEY (IdClientes) REFERENCES CLIENTES (IdClientes);

ALTER TABLE ORDENES
ADD FOREIGN KEY (IdProductos) REFERENCES PRODUCTOS(IdProductos);

ALTER TABLE PAGOSEMPLEADOS
ADD FOREIGN KEY (IdEmpleados) REFERENCES EMPLEADOS(IdEmpleados);

INSERT INTO EMPLEADOS VALUES(1, 'Luis Eduardo', 'Roca', 'Contreras',
							'Av. Los Constructores 346', 'Lima', 'Lima',
							'lerc@hotmail.com', '346-2530', 'LERC345');

INSERT INTO EMPLEADOS VALUES(2, 'Enrique Manuel', 'Ponce', 'Silverio',
                            'Los Industriales 840', 'Lima', 'Lima',
                            'emps@hotmail.com', '285-1820', 'EMPS310');
                             
INSERT INTO EMPLEADOS VALUES(3, 'Carlos Eduardo', 'Aguilar', 'Seminario',
                            'Los Ecologos 320', 'Lima', 'Lima',
                            'ceas@hotmail.com', '650-3042', 'CEAS110');
                             
INSERT INTO EMPLEADOS VALUES(4, 'Alfredo Enrique', 'Benavides', 'Aguilar',
                            'Av. Javier Prado 2350', 'Lima', 'Lima',
                            'aeba@hotmail.com', '320-4030', 'AEBA450');
                             
INSERT INTO EMPLEADOS VALUES(5, 'Luisa Maria', 'Valdivia', 'Egueren',
                            'Av. 28 de Julio 320', 'Lima', 'Lima',
                            'lmev@hotmail.com', '470-2032', 'LMVE630');
                            
INSERT INTO EMPLEADOS VALUES(6, 'Teresa Manuela', 'Efrain', 'Iturregi',
                            'Los Cipreses 228', 'Lima', 'Lima',
                            'tmei@hotmail.com', '370-5028', 'TMEI690');

INSERT INTO EMPLEADOS VALUES(7, 'Rosa Elvira', 'Lopez', 'Cordova',
                            'Los Geranios 6220', 'Lima', 'Lima',
                            'relc@hotmail.com', '840-3222', 'REIC333');

INSERT INTO EMPLEADOS VALUES(8, 'Juan Miguel', 'Cortez', 'Aguilar',
                            'Los Gladiolos 3110', 'Nasca', 'Ica',
                            'jmca@hotmail.com', '620-3048', 'JMCA350');
                        
INSERT INTO EMPLEADOS VALUES(9, 'Luis Enrique', 'Alvarez', 'Contreras',
                            'Los Manzanos 238', 'Nasca', 'Ica',
                            'leac@hotmail.com', '333-2030', 'LEAC121');
                            
INSERT INTO EMPLEADOS VALUES(10, 'Juan Gabriel', 'Montero', 'Alvarez',
                            'Puerto Inca 630', 'Nasca', 'Ica',
                            'jgma@hotmail.com', '750-4220', 'JGMA970');
                            
INSERT INTO EMPLEADOS VALUES(11, 'Juana Maria', 'Alvitez', 'Lozano',
                            'Los Sauces 880', 'Nasca', 'Ica',
                            'jmal@hotmail.com', '880-2010', 'JMAL820');

INSERT INTO EMPLEADOS VALUES(12, 'Luis Manuel', 'Aguilar', 'Espinoza',
                            'Los Industriales 620', 'Nasca', 'Ica',
                            'lmae@hotmail.com', '450-1010', 'LMAE650');
                        
INSERT INTO EMPLEADOS VALUES(13, 'Rosa Maria', 'Lopez', 'Aguilar',
                            'Los Arquitectos 3300', 'Nasca', 'Ica',
                            'rmla@hotmail.com', '630-2028', 'RMLA910');
                            
INSERT INTO EMPLEADOS VALUES(14, 'Guillermo Jose', 'Ruiz', 'Alvarez',
                            'Surinam 197', 'Ilo', 'Tacna',
                            'gjra@hotmail.com', '470-2028', 'GJRA115');
                        
INSERT INTO EMPLEADOS VALUES(15, 'Gladys Azucena', 'Ponce', 'Abad',
                            'Quito 820', 'Ilo', 'Tacna',
                            'gapa@hotmail.com', '630-2048', 'GAPA330');
                            
INSERT INTO EMPLEADOS VALUES(16, 'Luis Jose', 'Serna', 'Alvarez',
                            'Bogota 330', 'Ilo', 'Tacna',
                            'ljsa@hotmail.com', '550-3018', 'LJSA665');
                            
INSERT INTO EMPLEADOS VALUES(17, 'Andres Pedro', 'Reyna', 'Caceres',
                            'Brasilia 635', 'Ilo', 'Tacna',
                            'aprc@hotmail.com', '620-1340', 'APRC820');
                        
INSERT INTO EMPLEADOS VALUES(18, 'Luisa Natali', 'Reyna', 'Caceres',
                            'Brasilia 635', 'Ilo', 'Tacna',
                            'lnac@hotmail.com', '330-8020', 'LNAC890');
                            
INSERT INTO EMPLEADOS VALUES(19, 'Jose Andres', 'Valdivia', 'Aguilar',
                            'Quito 320', 'Ilo', 'Tacna',
                            'java@hotmail.com', '880-1320', 'JAVA650');
                            
INSERT INTO EMPLEADOS VALUES(20, 'Hector Jose', 'Velez', 'Lopez',
                            'Caracas 876', 'Ilo', 'Tacna',
                            'hjvl@hotmail.com', '650-3026', 'HJVL886');

INSERT INTO PAGOSEMPLEADOS VALUES(1, 'Gerente General', '2007-01-30', 14.50, 9500, '2010-06-30', 800);

INSERT INTO PAGOSEMPLEADOS VALUES(2, 'Jefe Operativo', '2008-06-30', NULL, 7000, '2010-06-30', 500);

INSERT INTO PAGOSEMPLEADOS VALUES(3, 'Jefe Administrativo', '2009-02-28', NULL, 7000, '2010-06-30', 500);

INSERT INTO PAGOSEMPLEADOS VALUES(4, 'Asistente Operacion', '2008-02-28', NULL, 6000, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(5, 'Asistente Operacion', '2007-01-30', NULL, 6000, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(6, 'Asistente Adminis.', '2008-06-15', NULL, 6000, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(7, 'Asistente Adminis.', '2009-09-09', NULL, 6000, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(8, 'Gerente Oficina', '2007-11-30', 10.20, 9000, '2010-06-30', 700);

INSERT INTO PAGOSEMPLEADOS VALUES(9, 'Jefe Operativo', '2009-12-20', NULL, 6500, '2010-06-30', 400);

INSERT INTO PAGOSEMPLEADOS VALUES(10, 'Jefe Adminis.', '2008-04-30', NULL, 6500, '2010-06-30', 400);

INSERT INTO PAGOSEMPLEADOS VALUES(11, 'Asistente Operacion', '2009-06-20', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(12, 'Asistente Operacion', '2008-05-15', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(13, 'Asistente Operacion', '2009-09-30', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(14, 'Gerente Oficina', '2007-01-30', 10.20, 9000, '2010-06-30', 700);

INSERT INTO PAGOSEMPLEADOS VALUES(15, 'Jefe Operativo', '2007-05-30', NULL, 6500, '2010-06-30', 400);

INSERT INTO PAGOSEMPLEADOS VALUES(16, 'Jefe Adminis.', '2008-06-08', NULL, 6500, '2010-06-30', 400);

INSERT INTO PAGOSEMPLEADOS VALUES(17, 'Asistente Operacion', '2008-01-25', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(18, 'Asistente Operacion', '2007-11-30', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(19, 'Asistente Adminis.', '2008-08-30', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PAGOSEMPLEADOS VALUES(20, 'Asistente Adminis.', '2007-09-30', NULL, 5500, '2010-06-30', NULL);

INSERT INTO PRODUCTOS VALUES(1, 'Taladro Percutor', 299.90);

INSERT INTO PRODUCTOS VALUES(2, 'Tanque de agua Rotoplas', 450.50);

INSERT INTO PRODUCTOS VALUES(3, 'Esmeril Angular', 289.90);

INSERT INTO PRODUCTOS VALUES(4, 'Martillo Perforador', 3299.90);

INSERT INTO PRODUCTOS VALUES(5, 'Martillo Demoledor', 2800.90);

INSERT INTO PRODUCTOS VALUES(6, 'Generador a Gasolina', 2338.90);

INSERT INTO PRODUCTOS VALUES(7, 'Motor Vibrador', 749.90);

INSERT INTO PRODUCTOS VALUES(8, 'Plancha Perfil 4', 34.50);

INSERT INTO PRODUCTOS VALUES(9, 'Multiplaca 4 mm', 22.90);

INSERT INTO PRODUCTOS VALUES(10, 'Multimetro Digital', 349.90);

INSERT INTO PRODUCTOS VALUES(11, 'Extension Profesional', 149.90);

INSERT INTO PRODUCTOS VALUES(12, 'Electrobomba Centrifuga', 399.90);

INSERT INTO PRODUCTOS VALUES(13, 'Equipo Hidromecanico', 649.90);

INSERT INTO PRODUCTOS VALUES(14, 'Terma Sole', 969.90);

INSERT INTO PRODUCTOS VALUES(15, 'Terma Splendida a gas', 499.90);

INSERT INTO PRODUCTOS VALUES(16, 'Latex Color 5 gl.', 160.90);

INSERT INTO PRODUCTOS VALUES(17, 'Latex Vencesa 5 gl.', 164.90);

INSERT INTO PRODUCTOS VALUES(18, 'Medio Bano Neo Tec', 119.90);

INSERT INTO PRODUCTOS VALUES(19, 'Eternit Multiplaca', 22.90);

INSERT INTO PRODUCTOS VALUES(20, 'Plancha Aexoforte', 32.50);

INSERT INTO CLIENTES VALUES(1, 'Ticino S.A.', 'Mayolo 345', 'Lima', 'Lima', 'etp@gmail.com', '652-2030', '648-3020');

INSERT INTO CLIENTES VALUES(2, 'Siderplas S.A.', 'Gonzalez Prada 480', 'Lima', 'Lima', 'sps@gmail.com', '340-5038', '650-2454');

INSERT INTO CLIENTES VALUES(3, 'Interforest', 'Santa Rosa 340', 'Nasca', 'Ica', 'insa@gmail.com', '423-3028', '362-2030');

INSERT INTO CLIENTES VALUES(4, 'Idepro', 'Benavides 450', 'Nasca', 'Ica', 'ide@gmail.com', '650-2020', '348-3020');

INSERT INTO CLIENTES VALUES(5, 'Toratto S.A.', 'Villa Marina 1440', 'Ilo', 'Tacna', 'ttt@gmail.com', '360-720', '254-3020');

INSERT INTO CLIENTES VALUES(6, 'Kaoton', 'Av. El Sol 320', 'Ilo', 'Tacna', 'ksa@gmail.com', '431-2028', '241-3026');

INSERT INTO CLIENTES VALUES(7, 'Instaplac', 'San Lorenzo 3021', 'Nasca', 'Ica', 'inst@gmail.com', '332-3794', '444-7600');

INSERT INTO CLIENTES VALUES(8, 'Disatec', 'Santa Teresa 320', 'Ilo', 'Tacna', 'dis@gmail.com', '613-3021', '613-4848');

INSERT INTO CLIENTES VALUES(9, 'Heuma S.A.', 'La Morera 567', 'Ilo', 'Tacna', 'heu@gmail.com', '266-4238', '836-2019');

INSERT INTO CLIENTES VALUES(10, 'Arquimedes S.A.', 'Faucett 620', 'Lima', 'Lima', 'arq@gmail.com', '221-0419', '326-4950');

INSERT INTO CLIENTES VALUES(11, 'Tecsur S.A.', 'Calango 790', 'Lima', 'Lima', 'tec@gmail.com', '515-1070', '515-1076');

INSERT INTO CLIENTES VALUES(12, 'Rotoplas', 'Gonzalez Prada 770', 'Nasca', 'Ica', 'rot@gmail.com', '320-3080', '252-1630');

INSERT INTO ORDENES VALUES(1000, 1, 2, 2, '2010-06-15');

INSERT INTO ORDENES VALUES(1001, 3, 4, 3, '2010-06-15');

INSERT INTO ORDENES VALUES(1002, 5, 1, 4, '2010-06-17');

INSERT INTO ORDENES VALUES(1003, 2, 5, 6, '2010-06-18');

INSERT INTO ORDENES VALUES(1004, 4, 8, 1, '2010-06-18');

INSERT INTO ORDENES VALUES(1005, 6, 10, 3, '2010-06-19');

INSERT INTO ORDENES VALUES(1006, 4, 20, 8, '2010-06-21');

INSERT INTO ORDENES VALUES(1007, 5, 15, 12, '2010-06-21');

INSERT INTO ORDENES VALUES(1008, 10, 14, 1, '2010-06-22');

INSERT INTO ORDENES VALUES(1009, 12, 18, 4, '2010-06-23');

INSERT INTO ORDENES VALUES(1010, 9, 16, 3, '2010-06-24');

INSERT INTO ORDENES VALUES(1011, 8, 3, 2, '2010-06-25');

INSERT INTO ORDENES VALUES(1012, 6, 5, 10, '2010-06-25');

INSERT INTO ORDENES VALUES(1013, 12, 10, 9, '2010-06-26');

INSERT INTO ORDENES VALUES(1014, 11, 12, 7, '2010-06-26');

INSERT INTO ORDENES VALUES(1015, 5, 14, 8, '2010-06-29');

INSERT INTO ORDENES VALUES(1016, 12, 1, 6, '2010-06-30');

INSERT INTO ORDENES VALUES(1017, 1, 8, 8, '2010-06-30');

INSERT INTO ORDENES VALUES(1018, 2, 6, 5, '2010-06-30');

INSERT INTO ORDENES VALUES(1019, 10, 4, 4, '2010-06-30');

SELECT EMPRESA, EMAIL
FROM CLIENTES;

SELECT NOMBRES, APELLIDOPAT, APELLIDOMAT
FROM EMPLEADOS
WHERE CIUDAD IS 'Ilo';

SELECT *
FROM PRODUCTOS
WHERE COSTO < 100;

-- En la correcion, menciona el uso de DISTINCT para incluir unicamente diferentes puestos
-- pero en los apuntes no aparece ninguna explicacion; con lo que se ha dejado asi
SELECT PUESTO
FROM PAGOSEMPLEADOS;

SELECT *
FROM ORDENES
WHERE FECHA IS '2010-06-30';

SELECT *
FROM PAGOSEMPLEADOS
ORDER BY SUELDO DESC;

SELECT *
FROM PAGOSEMPLEADOS
WHERE BONO IS NULL;

SELECT *
FROM PRODUCTOS
WHERE COSTO BETWEEN 500 AND 1000;

SELECT EMPRESA, DIRECCION
FROM CLIENTES
WHERE (CIUDAD LIKE 'Lima') OR (CIUDAD LIKE 'Nasca');

SELECT SUM(SUELDO)
FROM PAGOSEMPLEADOS;

SELECT SUM(BONO)
FROM PAGOSEMPLEADOS;

SELECT SUM(SUELDO) + SUM(BONO)
FROM PAGOSEMPLEADOS;

SELECT AVG(SUELDO)
FROM PAGOSEMPLEADOS;

SELECT MAX(SUELDO)
FROM PAGOSEMPLEADOS;

SELECT MIN(SUELDO)
FROM PAGOSEMPLEADOS;

SELECT COUNT(IDEMPLEADOS), CIUDAD
FROM EMPLEADOS
GROUP BY CIUDAD;
