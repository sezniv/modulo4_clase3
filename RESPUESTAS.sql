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