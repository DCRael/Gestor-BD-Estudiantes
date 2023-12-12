DROP DATABASE alumnos_db;
USE alumnos_db;

CALL insertar_alumnos();
INSERT INTO Alumnos(password, nombre, apellido)
VALUES ('3213', 'juan', 'perez');
SELECT * FROM Alumnos;

CALL insertar_profesores();
SELECT * FROM Profesores;
    
INSERT INTO Materias(nombre, Profesores_id) 
VALUES
	("programación", 1),
	("Base de datos", 2),
	("Calculo", 3),
	("Sistemas operativos", 1),
	("Diseño multimedia", 4),
	("Ingenieria de software", 5);
SELECT * FROM Materias;

INSERT INTO Dias(nombre_dia)
VALUES
	('Lunes'),
	('Martes'),
	('Miércoles'),
	('Jueves'),
	('Viernes');
SELECT * FROM Dias;

INSERT INTO Horarios(hora, dias_id)
VALUES
		('09:00 am - 11:00 am', 1),
		('11:00 am - 01:00 pm', 1),
		('10:00 am - 01:00 pm', 2),
		('12:00 pm - 02:00 pm', 3),
		('12:00 pm - 02:00 pm', 5),
		('04:00 pm - 07:00 pm', 5);        
SELECT * FROM Horarios;

INSERT INTO Materias_detalle(Alumnos_id, Materias_id, Horarios_id)
VALUES
	(1,1,5),
	(2,1,5),
	(3,1,5),
	(4,1,5),
	(5,1,5),
	(6,1,5),
	(7,1,5),
	(8,1,5),
	(9,1,5),
	(10,1,5),
	(11,1,5), -- Alumnos de materia 1
	(12,2,3),
	(13,2,3),
	(14,2,3),
	(15,2,3),
	(16,2,3),
	(17,2,3),
	(18,2,3),
	(19,2,3),
	(20,2,3),
	(21,2,3),
	(22,2,3), -- Alumnos de materia 2
	(23,3,4),
	(24,3,4),
	(25,3,4),
	(26,3,4),
	(27,3,4),
	(28,3,4),
	(29,3,4),
	(30,3,4),
	(31,3,4),
	(32,3,4),
	(33,3,4), -- Alumnos de materia 3
	(34,4,1),
	(35,4,1),
	(36,4,1),
	(37,4,1),
	(38,4,1),
	(39,4,1),
	(40,4,1),
	(41,4,1),
	(42,4,1),
	(43,4,1),
	(44,4,1),	-- Alumnos de materia 4
	(45,5,2),
	(46,5,2),
	(47,5,2),
	(48,5,2),
	(49,5,2),
	(50,5,2),
	(51,5,2),
	(52,5,2),
	(53,5,2),
	(54,5,2),
	(55,5,2), -- Alumnos de materia 5
	(56,6,6),
	(57,6,6),
	(58,6,6),
	(59,6,6),
	(60,6,6),
	(61,6,6),
	(62,6,6),
	(63,6,6),
	(64,6,6),
	(65,6,6),
	(66,6,6), -- Alumnos de materia 6
	(67,6,6), 
	(68,6,6), 
	(69,6,6), 
	(70,6,6);
SELECT * FROM Materias_detalle;

-- CONSULTAR MATERIAS DEL PROFESOR
CALL consultar_materia_profesor(1);

-- DAR DE ALTA PROFESOR

#MUESTRA TODOS LOS ALUMNOS Y SUS RESPECTIVAS MATERIAS
SELECT a.id AS ID,
	   CONCAT(a.nombre, ' ', a.apellido) AS 'NOMBRE DEL ALUMNO',
	   m.nombre AS MATERIA
FROM Alumnos a
LEFT JOIN Materias_detalle md ON a.id = md.Alumnos_id
LEFT JOIN Materias m ON md.Materias_id = m.id
WHERE md.Materias_id IS NOT NULL;

#MUESTRA TODOS LOS ALUMNOS QUE NO TIENEN MATERIAS
SELECT a.id AS 'ID ALUMNO',
	   CONCAT(a.nombre, ' ', a.apellido) AS 'NOMBRE DEL ALUMNO',
	   m.nombre AS MATERIA
FROM Alumnos a
LEFT JOIN Materias_detalle md ON a.id = md.Alumnos_id
LEFT JOIN Materias m ON md.Materias_id = m.id
WHERE md.Materias_id IS NULL;

#TABLA DE MATERIAS Y CUPOS
SELECT m.id AS 'MATERIA ID',
	   m.nombre AS MATERIA,
	   COUNT(a.id) AS 'NUMERO DE ALUMNOS'
FROM Materias_detalle md
INNER JOIN Materias m ON md.Materias_id = m.id
INNER JOIN Alumnos a ON md.Alumnos_id = a.id
GROUP BY m.id, m.nombre;

-- CONSULTAR HORARIO DE ALUMNO
CALL consultar_horario_alumno(15);


-- DAR DE BAJA ALUMNO
SELECT m.id AS 'ID MATERIA',
	   m.nombre AS MATERIA,
       a.id AS 'ID ALUMNO',
       CONCAT(a.nombre, ' ', a.apellido) AS 'NOMBRE DEL ALUMNO'
FROM Materias_detalle md
INNER JOIN Materias m ON md.Materias_id = m.id
INNER JOIN Alumnos a ON md.Alumnos_id = a.id
WHERE a.id = 15;






