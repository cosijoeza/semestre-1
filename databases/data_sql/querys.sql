SELECT * FROM actividades;
SELECT * FROM articulos;
SELECT * FROM ca;
SELECT * FROM comision;
SELECT * FROM eventos;
SELECT * FROM materias;
SELECT * FROM planes;
SELECT * FROM profesoryarticulo;
SELECT * FROM profesorycomision;
SELECT * FROM profesorymateria;
SELECT * FROM profesorytesis;
SELECT * FROM sni;
SELECT * FROM tesistas;

-- TODOS LOS PROFESORES DEL INSTITUTO DE COMPUTACIÓN
SELECT P.nombre AS profe,C.nombre AS carrera FROM carreras C INNER JOIN profesores P ON C.codigoCarrera=P.carrera WHERE codigoCarrera=2;