CREATE TABLE zoo (
	zoo_id SERIAL NOT NULL,
	nombre VARCHAR (30),
	ciudad VARCHAR (30),
	pais VARCHAR (20),
	tamaño INTEGER,
	presupuesto NUMERIC,
	PRIMARY KEY (zoo_id)
);


CREATE TABLE animales (
	id_animal SERIAL NOT NULL,
	nombre_comun VARCHAR (30),
	nombre_cientifico VARCHAR (30),
	familia VARCHAR (30),
	peligro_extincion BOOLEAN,
	PRIMARY KEY (id_animal)
);


CREATE TABLE animal_especifico (
	id_animal_especifico SERIAL NOT NULL,
	num_identificacion VARCHAR (30),
	especie INTEGER,
	sexo VARCHAR (20),
	fecha_nacimiento INTEGER,
	pais VARCHAR (20),
	continente VARCHAR (20),
	id_zoo SERIAL NOT NULL,
	PRIMARY KEY (id_animal_especifico),
	FOREIGN KEY (especie)
		REFERENCES animales (id_animal),
	FOREIGN KEY (id_zoo)
		REFERENCES zoo (zoo_id)
);