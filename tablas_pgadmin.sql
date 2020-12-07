-- Table: public.encargados

-- DROP TABLE public.encargados;

CREATE TABLE public.encargados
(
    id_encargados integer NOT NULL,
    supervisor_encargados integer,
    nombre_encargados character varying(45) COLLATE pg_catalog."default",
    numero_encargado integer,
    id_area1 integer,
    id_zoo2 integer,
    CONSTRAINT encargados_pkey PRIMARY KEY (id_encargados),
    CONSTRAINT encargados_areaszoo_fkey FOREIGN KEY (id_area1)
        REFERENCES public.areas_zoo (id_area) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.encargados
    OWNER to postgres;



--script de insercion de datos
INSERT INTO public.encargados(
	id_encargados, supervisor_encargados, nombre_encargados, numero_encargado, id_area1, id_zoo2)
	VALUES (?, ?, ?, ?, ?, ?);






-- Table: public.animal_x_encargado

-- DROP TABLE public.animal_x_encargado;

CREATE TABLE public.animal_x_encargado
(
    id_animal character varying(30) COLLATE pg_catalog."default",
    id_categoria character varying(10) COLLATE pg_catalog."default",
    id_encargados integer,
    id_area2 integer,
    id_zoo3 integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.animal_x_encargado
    OWNER to postgres;


--script insercion de datos
INSERT INTO public.animal_x_encargado(
	id_animal, id_categoria, id_encargados, id_area2, id_zoo3)
	VALUES (?, ?, ?, ?, ?);