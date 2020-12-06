--CREACIÓN DE LA TABLA ZOO
CREATE TABLE zoo(
	id_zoo SERIAL,
	nombre_zoo VARCHAR(45),
	direccion_zoo VARCHAR(45),
	fono_zoo int,
	PRIMARY KEY (id_zoo)
);

--CREACIÓN TABLA CLASE DE ANIMALES
CREATE TABLE clase_animal(
	id_clasea SERIAL,
	tipo_clasea VARCHAR(15),
	vertebrado_clasea BOOL,
	piel_clasea VARCHAR(15),
	sangrefria_clasea BOOL,
	respiracion_clasea VARCHAR(15),
	reproduccion_clasea VARCHAR(15),
	PRIMARY KEY(id_clasea)
);
	
--CREACION TABLA ANIMAL
CREATE TABLE animal(
	id_animal SERIAL,
	id_clasea SERIAL,
	especie_animal VARCHAR(20),
	PRIMARY KEY (id_animal),
	FOREIGN KEY (id_clasea) REFERENCES clase_animal(id_clasea) 	
);	
	
	
--CREACION TABLA DETALLE ANIMAL
CREATE TABLE detalle_animal(
	id_animal SERIAL,
	id_clasea SERIAL,
	caracteristica_detallea VARCHAR(15),
	descripcion_detallea VARCHAR(45),
	FOREIGN KEY (id_animal) REFERENCES animal(id_animal)
);
	
	
	
--CREACION TABLA ANIMALES ZOO
CREATE TABLE animal_zoo(
	id_zoo SERIAL,
	id_animal SERIAL,
	nombre_azoo VARCHAR(10),
	edad_azoo INT,
	fechaIn_azoo DATE,
	fechaOut_azoo DATE,
	saludok_azoo BOOL,
	estado_azoo VARCHAR(45),
	FOREIGN KEY (id_zoo) REFERENCES zoo(id_zoo),
	FOREIGN KEY (id_animal) REFERENCES animal(id_animal)
);


