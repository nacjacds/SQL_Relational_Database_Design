--Algunos queries para proyecto SQL

--Creacion de Tablas
--1
CREATE TABLE alumnos (
    alumnoid SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    email TEXT NOT NULL
);

--2
CREATE TABLE docentes (
    docenteid SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    rol TEXT NOT NULL
);

--3
CREATE TABLE programas (
    programaid SERIAL PRIMARY KEY,
    verticalid INT NOT NULL,
    promocionid INT NOT NULL,
    campus TEXT
);

--4
CREATE TABLE programa_alumnos (
    programaal_id SERIAL PRIMARY KEY,
    alumnoid INT NOT NULL,
    programaid INT NOT NULL,
    modalidad TEXT
);

--5
CREATE TABLE programa_docentes(
    programadoc_id SERIAL PRIMARY KEY,
    docenteid INT NOT NULL,
    programaid INT NOT NULL,
    modalidad TEXT
);

--6
CREATE TABLE promociones(
    promocionid SERIAL PRIMARY KEY,
    mes TEXT NOT NULL,
    fechainicio TEXT NOT NULL
);

--7
CREATE TABLE vertical(
    verticalid SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL
);

--8
CREATE TABLE proyectos(
    proyectoid SERIAL PRIMARY KEY,
    verticalid INT NOT NULL,
    nombre TEXT NOT NULL
);

--9
CREATE TABLE notas(
    programaal_id INT NOT NULL,
    proyectoID INT NOT NULL,
    nota TEXT
);


--Creando relación entre tablas
--1
ALTER TABLE programa_alumnos
ADD CONSTRAINT ac_alumnos
FOREIGN KEY (alumnoid)
REFERENCES alumnos(alumnoid);

ALTER TABLE programa_alumnos
ADD CONSTRAINT ac_alumnosprogramas
FOREIGN KEY (programaid)
REFERENCES programas(programaid);

--2
ALTER TABLE programa_docente
ADD CONSTRAINT ac_docente
FOREIGN KEY (docenteid)
REFERENCES docentes(docenteid);

ALTER TABLE programa_docente
ADD CONSTRAINT ac_programa
FOREIGN KEY (programaid)
REFERENCES programas(programaid);

--3
ALTER TABLE programas
ADD CONSTRAINT ac_vertical
FOREIGN KEY (verticalid)
REFERENCES vertical(verticalid);

ALTER TABLE programas
ADD CONSTRAINT ac_promocion
FOREIGN KEY (promocionid)
REFERENCES promociones(promocionid);

--4
ALTER TABLE proyectos
ADD CONSTRAINT ac_vertical
FOREIGN KEY (verticalid)
REFERENCES vertical(verticalid);

--5
ALTER TABLE notas
ADD CONSTRAINT ac_alumnos
FOREIGN KEY (alumnoid)
REFERENCES alumnos(alumnoid);

ALTER TABLE notas
ADD CONSTRAINT ac_proyecto
FOREIGN KEY (proyectoid)
REFERENCES proyectos(proyectoid);

--Insertar datos en tablas
--Ejemplo desde una tabla temporal
INSERT INTO PROMOCIONES (fecha_comienzo, mes)
SELECT fecha_comienzo, promocion AS mes
FROM temp_alumnos
GROUP BY fecha_comienzo, promocion
ORDER BY fecha_comienzo;

