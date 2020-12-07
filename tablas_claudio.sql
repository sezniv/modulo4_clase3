CREATE TABLE encargados (id_encargados INT,
			 supervisor_encargados INT,
			 nombre_encargados VARCHAR(45),
			 numero_encargado INT,
			 id_area INT,
			 id_zoo INT
                         CONSTRAINT id_encargados_key PRIMARY KEY (id_encargados));




CREATE TABLE animal_x_encargados (id_animal VARCHAR(30),
				  id_categoria VARCHAR(10),
				  id_encargados INT,
				  id_area INT,
				  id_zoo INT);