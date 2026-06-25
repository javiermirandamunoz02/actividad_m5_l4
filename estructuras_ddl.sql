CREATE TABLE departamentos (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleados (
	id SERIAL PRIMARY KEY, 
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100), 
	departamento_id INTEGER,
	FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

ALTER TABLE empleados ADD COLUMN fecha_ingreso DATE;
ALTER TABLE departamentos ADD COLUMN ubicacion VARCHAR(100);

ALTER TABLE empleados ALTER COLUMN correo SET NOT NULL;





DROP TABLE IF EXISTS empleados;

CREATE TEMP TABLE prueba_temporal (
    id SERIAL PRIMARY KEY,
    descripcion TEXT
);

INSERT INTO prueba_temporal (descripcion) VALUES ('Dato A'), ('Dato B');

TRUNCATE TABLE prueba_temporal;

