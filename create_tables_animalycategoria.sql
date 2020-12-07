CREATE TABLE categoria_animal(
	id_categoria VARCHAR(10),
	descripcion_categoria VARCHAR(100),
	PRIMARY KEY(id_categoria)
)

CREATE TABLE animal(
	id_animal SERIAL,
	especie_animal VARCHAR(45),
	PRIMARY KEY(id_animal),
	FOREIGN KEY(fk_id_categoria) REFERENCES categoria_animal(id_categoria)	
)