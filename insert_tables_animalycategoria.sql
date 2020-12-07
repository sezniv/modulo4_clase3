INSERT INTO categoria_animal
	(id_categoria, descripcion_categoria)
VALUES
	('Mamiferos','Pelaje-respiracion pulmonar-sangre caliente-Pueden ser placentarios-marsupiales-monotemas'),
	('Insectos','Invertebrados-sangre fria'),
	('Aves','Plumaje-respiracion pulmonar-sangre caliente-Puede volar'),
	('Reptiles','Escamosos-respiracion pulmonar-sangre fria'),
	('Peces','Escamas-res´piracion branquial-sangre fria- Nadan')
	
-- id_animal = [SIGLA CATEGORIA][SIGLA ESPECIE] NUMERO [0-999], EJ: León mamifero: ML001	
INSERT INTO animal
	(id_animal,fk_id_categoria,especie_animal)
VALUES
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
	('PD001','Peces','Pez dorado')