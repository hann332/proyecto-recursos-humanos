-- Crea las tablas en SQLite (DB Browser). Luego: File > Import > Table from CSV file.
CREATE TABLE departamentos (id_departamento INTEGER PRIMARY KEY, nombre_departamento TEXT);
CREATE TABLE empleados (id_empleado INTEGER, nombre TEXT, genero TEXT, id_departamento INTEGER, puesto TEXT, ciudad TEXT, fecha_ingreso DATE, fecha_baja DATE, estatus TEXT);
CREATE TABLE salarios (id_salario INTEGER PRIMARY KEY, id_empleado INTEGER, salario_mensual REAL, fecha_inicio DATE, fecha_fin DATE);
