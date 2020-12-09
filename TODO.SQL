-- Se crea tabla zoo

CREATE TABLE zoo(
	id_zoo SERIAL,
	nombre_zoo VARCHAR(45),
	PRIMARY KEY (id_zoo)
  );

-- Se crea tabla categoria_animal

CREATE TABLE categoria_animal(
	id_categoria VARCHAR(10),
	descripcion_categoria VARCHAR(100),
	PRIMARY KEY(id_categoria)
  );

-- Se crea tabla animal

CREATE TABLE animal(
	id_animal VARCHAR(5),
	fk_id_categoria VARCHAR(10),
	especie_animal VARCHAR(45),
	PRIMARY KEY(id_animal),
	FOREIGN KEY(fk_id_categoria) REFERENCES categoria_animal(id_categoria)
  );

-- Se crea tabla areas_zoo

CREATE TABLE areas_zoo(
	id_area SERIAL,
	fk_id_zoo SERIAL,
	nombre_area VARCHAR(20),
	PRIMARY KEY (id_area),
	FOREIGN KEY (fk_id_zoo) REFERENCES zoo(id_zoo)
  );

-- Se crea tabla encargados

CREATE TABLE encargados(
	id_encargados SERIAL,
	fk_id_area INT,
	supervisor_encargados BOOL,
	nombre_encargado VARCHAR(45),
	numero_encargado INT,
	PRIMARY KEY (id_encargados),
	FOREIGN KEY (fk_id_area) REFERENCES areas_zoo(id_area)
  );

-- Se crea tabla animalXencargado

CREATE TABLE animalXencargado(
	fk_id_encargados INT REFERENCES encargados(id_encargados) ON UPDATE CASCADE ON DELETE CASCADE,
	fk_id_animal VARCHAR(5) REFERENCES animal(id_animal) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT axe_pkey PRIMARY KEY (fk_id_encargados, fk_id_animal)
  );

-- Se crea tabla novedades
CREATE TABLE novedades(
	id_novedad SERIAL,
	fk_idEncargado INT,
	fk_idAnimal VARCHAR(5),
	fecha_novedad DATE,
	comentario_novedad VARCHAR(100),
	PRIMARY KEY (id_novedad),
	FOREIGN KEY (fk_idEncargado,fk_idAnimal) REFERENCES animalxencargado(fk_id_encargados,fk_id_animal)
  );

-- Creacion Zoo
INSERT INTO zoo (nombre_zoo) VALUES ('Awake Zoo');

-- Creacion de especies
INSERT INTO categoria_animal (id_categoria, descripcion_categoria) VALUES
	('Mamiferos','Pelaje-respiracion pulmonar-sangre caliente-Pueden ser placentarios-marsupiales-monotemas'),
	('Insectos','Invertebrados-sangre fria'),
	('Aves','Plumaje-respiracion pulmonar-sangre caliente-Puede volar'),
	('Reptiles','Escamosos-respiracion pulmonar-sangre fria'),
	('Peces','Escamas-res´piracion branquial-sangre fria- Nadan');

-- Se crean animales
INSERT INTO animal (id_animal,fk_id_categoria,especie_animal) VALUES
	('ML001','Mamiferos','León'),
	('ML002','Mamiferos','Lobo'),
	('MM001','Mamiferos','Mono'),
	('MB001','Mamiferos','Burro'),
	('MC001','Mamiferos','Caballo'),	
	('IH001','Insectos','Hormiga'),
	('IM001','Insectos','Mariposa'),
	('IM002','Insectos','Mantis'),
	('IE001','Insectos','Escarabajo rinoceronte'),
	('IA001','Insectos','Abeja'),
	('AP001','Aves','Pájaro Carpintero'),
	('AB001','Aves','Buho'),
	('AA001','Aves','Aguila'),
	('AC001','Aves','Condor'),
	('AF001','Aves','Flamenco'),
	('RS001','Reptiles','Serpiente Cascabel'),
	('RC001','Reptiles','Camaleon'),
	('RC002','Reptiles','Cocodrilo'),
	('RI001','Reptiles','Iguana'),
	('RT001','Reptiles','Tortuga'),
	('PG001','Peces','Pez globo '),
	('PG002','Peces','Pez gato'),
	('PP001','Peces','Pez payaso'),
	('PE001','Peces','Pez espada'),
	('PD001','Peces','Pez dorado');

-- Se crean areas_zoo 1,2,3
INSERT INTO areas_zoo (fk_id_zoo,nombre_area) VALUES
	(1,'Mamiferos y Aves'),
	(1,'Insectos y Reptiles'),
	(1,'Peces');

-- Se crean encargados
INSERT INTO encargados
	(fk_id_area,supervisor_encargados,nombre_encargado,numero_encargado) VALUES
	(1,TRUE,'Aragorn',99999999),
	(1,FALSE,'Legolas',88888888),
	(1,FALSE,'Gimli',77777777),
	(2,TRUE,'Hermione',66666666),
	(2,FALSE,'Harry',55555555),
	(2,FALSE,'Ron',44444444),
	(3,TRUE,'Prue',33333333),
	(3,FALSE,'Phoebe',22222222),
	(3,FALSE,'Piper',11111111);

INSERT INTO animalXencargado
	(fk_id_encargados,fk_id_animal)

VALUES
	(1,'ML001'),
	(2,'ML002'),
	(2,'MM001'),
	(3,'MB001'),
	(3,'MC001'),
	(1,'AP001'),
	(2,'AB001'),
	(2,'AA001'),
	(3,'AC001'),
	(3,'AF001'),
	(4,'IH001'),
	(5,'IM001'),
	(5,'IM002'),
	(6,'IE001'),
	(6,'IA001'),
	(4,'RS001'),
	(5,'RC001'),
	(5,'RC002'),
	(6,'RI001'),
	(6,'RT001'),
	(7,'PG001'),
	(8,'PG002'),
	(8,'PP001'),
	(9,'PE001'),
	(9,'PD001');

INSERT INTO public.novedades
    (id_novedad, fk_idencargado, fk_idanimal, fecha_novedad, comentario_novedad)
	
    VALUES (001, 1, 'ML001', '2020/12/08', 'León ha mordido a un visitante ');

INSERT INTO public.novedades
    (id_novedad, fk_idencargado, fk_idanimal, fecha_novedad, comentario_novedad)
    VALUES (002, 1, 'AP001', '2020/12/10', 'Intento de escape de un pajaro carpintero ');

INSERT INTO public.novedades
    (id_novedad, fk_idencargado, fk_idanimal, fecha_novedad, comentario_novedad)
    VALUES (003, 8, 'PP001', '2020/12/20', 'Un pez payaso ha sido alimentado por un visitante ');
    

--RESPUESTAS

--9
-- EL NUMERO DEL ENCARGADO ASOCIADO AL LEON ML001
SELECT numero_encargado FROM encargados
INNER JOIN novedades
ON (novedades.fk_idEncargado = encargados.id_encargados)
WHERE novedades.fk_idanimal = 'ML001';

--10
--VISITAR SERPIENTE CASCABEL RS001 Y OBTENER EL AREA, NOMBRE Y FONO DEL SUPERVISOR
SELECT fk_id_area, nombre_encargado,numero_encargado  FROM encargados INNER JOIN animalXencargado ON (animalXencargado.fk_id_encargados = encargados.id_encargados) WHERE animalXencargado.fk_id_animal = 'RS001';

--11
--cONTAR LA CANTIDAD DE ANIMALES DEL AREA 3
SELECT COUNT(*) 
FROM animal
WHERE fk_id_categoria = 'Peces';

--12
-- Mostrar todos los supervisores de la tabla encargados
SELECT fk_id_area, nombre_encargado FROM encargados WHERE supervisor_encargados = 't';
-- Mostar las novedades relacionadas a solo visitantes
SELECT * FROM novedades WHERE comentario_novedad like '%visitante%';
UPDATE zoo set nombre_zoo = 'Animalitos en cautiverio' where id_zoo = 1;



