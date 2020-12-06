--INSERCION DE DATOS A TABLA ZOO
INSERT INTO zoo
	(nombre_zoo,direccion_zoo,fono_zoo)
	VALUES ('Awake Zoo','Av. Lab 2020', 99999999);
	
--INSERCION DE CLASE DE ANIMALES
INSERT INTO clase_animal
	(tipo_clasea,vertebrado_clasea,piel_clasea,sangrefria_clasea,respiracion_clasea,reproduccion_clasea)
VALUES
	('Mamifero',TRUE,'Pelaje',FALSE,'Pulmonar','Placentario'),
	('Mamifero',TRUE,'Pelaje',FALSE,'Pulmonar','Marsupial'),
	('Mamifero',TRUE,'Pelaje',FALSE,'Pulmonar','Monotrema'),
	('Ave',TRUE,'Plumaje',FALSE,'Pulmonar','Ovíparo'),
	('Pez',TRUE,'Escamas',TRUE,'Branquias','Ovíparo'),
	('Anfibio',TRUE,'Piel mucosa',TRUE,'Cutanea','Ovíparo'),
	('Anfibio',TRUE,'Piel mucosa',TRUE,'Pulmonar','Ovíparo'),
	('Reptil',TRUE,'Escamas',TRUE,'Pulmonar','Ovíparo'),
	('Arácnido',FALSE,'Pelaje',TRUE,'Filotraquea','Ovíparo'),
	('Cefalópodo',FALSE,'Cromatóforos',TRUE,'Branquias','Ovíparo'),
	('Lepidóptero',FALSE,'NA',TRUE,'Espiracular','Holometabolo')


