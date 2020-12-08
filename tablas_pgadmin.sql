-- Table: public.encargados

-- DROP TABLE public.encargados;

CREATE TABLE public.encargados
(
    id_encargados integer NOT NULL,
    nombre_encargados character varying(45) COLLATE pg_catalog."default",
    numero_encargado integer,
    id_area1 integer,
    supervisor_encargados boolean,
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







-- Table: public.animal_x_encargado

-- DROP TABLE public.animal_x_encargado;

CREATE TABLE public.animal_x_encargado
(
    id_animalxencarg integer NOT NULL,
    id_encargados1 integer,
    id_animal1 character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT animal_x_encargado_pkey PRIMARY KEY (id_animalxencarg),
    CONSTRAINT animalxenc_encargado_fk FOREIGN KEY (id_encargados1)
        REFERENCES public.encargados (id_encargados) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.animal_x_encargado
    OWNER to postgres;


--agregamos la segunda llave foranea id_animal
ALTER TABLE animal_x_encargado
ADD CONSTRAINT animalxenc_animal_fk FOREIGN KEY (id_animal1)
REFERENCES public.animal (id_animal) MATCH SIMPLE
ON UPDATE CASCADE
ON DELETE CASCADE
NOT VALID;

