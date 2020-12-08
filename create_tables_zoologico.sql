--CREACIÓN DE LA TABLA ZOO
CREATE TABLE zoo(
	id_zoo SERIAL,
	nombre_zoo VARCHAR(45),
	PRIMARY KEY (id_zoo)
);

--CREACIÓN TABLA CATEGORIA ANIMALES
CREATE TABLE categoria_animal(
	id_categoria VARCHAR(10),
	descripcion_categoria VARCHAR(100),
	PRIMARY KEY(id_categoria)
);
	
--CREACION TABLA ANIMAL
CREATE TABLE animal(
	id_animal VARCHAR(5),
	fk_id_categoria VARCHAR(10),
	especie_animal VARCHAR(45),
	PRIMARY KEY(id_animal),
	FOREIGN KEY(fk_id_categoria) REFERENCES categoria_animal(id_categoria)	
);	
	
	
--CREACION TABLA AREAS ZOO
CREATE TABLE areas_zoo(
	id_area SERIAL,
	fk_id_zoo SERIAL,
	nombre_area VARCHAR(20),
	PRIMARY KEY (id_area),
	FOREIGN KEY (fk_id_zoo) REFERENCES zoo(id_zoo)
);
	
--CREACION TABLA ENCARGADOS
CREATE TABLE encargados(
	id_encargados SERIAL,
	fk_id_area INT,
	supervisor_encargados BOOL,
	nombre_encargado VARCHAR(45)
	numero_encargado INT,
	PRIMARY KEY (id_encargados),
	FOREIGN KEY (fk_id_area) REFERENCES areas_zoo(id_area)
);


--CREACION TABLA ANIMALES x ENCARGADOS
CREATE TABLE animalXencargado(
	fk_id_encargados INT REFERENCES encargados(id_encargados) ON UPDATE CASCADE ON DELETE CASCADE,
	fk_id_animal VARCHAR(5) REFERENCES animal(id_animal) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT axe_pkey PRIMARY KEY (fk_id_encargados, fk_id_animal)

);

	
--CREACION TABLA NOVEDADES
CREATE TABLE novedades(
	id_novedad SERIAL,
	fk_idEncargado INT,
	fk_idAnimal VARCHAR(5),
	fecha_novedad DATE,
	comentario_novedad VARCHAR(100),
	PRIMARY KEY (id_novedad),
	FOREIGN KEY (fk_idEncargado,fk_idAnimal) REFERENCES animalxencargado(fk_id_encargados,fk_id_animal)
);


