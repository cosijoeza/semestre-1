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

    --(x) Numero de profesores por instituto
    SELECT c.nombre AS Carrera, COUNT(p.carrera) AS NumeroProfesores FROM profesores AS p INNER JOIN carreras AS c ON p.carrera=c.codigoCarrera GROUP BY (p.carrera);

    --(x) Profesores que son SNI
    SELECT p.nombre,p.correo, sni.correoProfesor,p.carrera FROM profesores AS p INNER JOIN sni ON p.correo=sni.correoProfesor;

    --(x) agrupas sni por correo
    SELECT * FROM sni GROUP BY(correoProfesor);

    --(x) Nivel de SNI de los profesores por carreras
    SELECT p.nombre,p.carrera,c.nombre,sni.nivelSNI FROM profesores AS p INNER JOIN (SELECT * FROM sni GROUP BY(correoProfesor)) AS sni ON p.correo=sni.correoProfesor INNER JOIN carreras AS c ON p.carrera=c.codigoCarrera;

-- (1).- NUMERO DE SNIS POR CARRERA
SELECT c.nombre AS Carrera, COUNT(p.carrera) AS Cantidad FROM profesores AS p INNER JOIN (SELECT * FROM sni GROUP BY(correoProfesor)) AS sni ON p.correo=sni.correoProfesor INNER JOIN carreras AS c ON p.carrera=c.codigoCarrera GROUP BY(p.carrera);

    --(x) Correo del profesor que escribio el articulo que tiene el siguiente titulo
    SELECT pa.correo,a.titulo FROM profesoryarticulo AS pa INNER JOIN articulos AS a ON pa.numero=a.numero

    --(x) Articulos que escriben articulos con su carrera
    SELECT p.nombre,pa.correo,a.titulo AS tituloArticulo,p.carrera,c.nombre FROM profesoryarticulo AS pa INNER JOIN articulos AS a ON pa.numero=a.numero INNER JOIN profesores AS p ON p.correo=pa.correo INNER JOIN carreras AS c ON c.codigoCarrera=p.carrera;

--(2).- NUMERO DE ARTICULOS POR CARRERA
SELECT c.nombre AS Carrera, COUNT(p.carrera) AS NumeroDeArticulos FROM profesoryarticulo AS pa INNER JOIN articulos AS a ON pa.numero=a.numero INNER JOIN profesores AS p ON p.correo=pa.correo INNER JOIN carreras AS c ON c.codigoCarrera=p.carrera GROUP BY(p.carrera);

--(3) NUMERO DE ACTIVIDADES POR CARRERA
SELECT a.actividad AS Actividad,c.nombre AS Carrera,COUNT(c.codigoCarrera) AS CantidadPorCarrera FROM actividades AS a INNER JOIN profesores AS p ON a.idProfesor=p.id INNER JOIN carreras AS c ON p.carrera=c.codigoCarrera GROUP BY(c.codigoCarrera);

    --(x) ROL DE UN PROFESOR EN UNA TESIS INFORMACION DEL ESTUDIANTE
    SELECT P.nombre,P.correo,PT.rol,PT.idTesis,T.nombreTesis,T.nombreEstudiante,T.nivel FROM profesorytesis AS PT INNER JOIN profesores AS P ON PT.correo=P.correo INNER JOIN tesistas AS T ON PT.idTesis=T.id LIMIT 10;

    --(x) Informacion del profesor, su carrera y la tesis que tiene a cargo, información del estudiante.
    SELECT P.nombre AS Profesor,P.correo AS Correo,C.nombre AS Carrera,PT.idTesis,PT.rol AS Rol,T.nombreTesis AS TituloTesis,T.nombreEstudiante AS Estudiante,T.nivel AS Nivel FROM profesores AS P INNER JOIN  carreras AS C ON P.carrera=C.codigoCarrera INNER JOIN profesorytesis AS PT ON PT.correo=P.correo INNER JOIN tesistas AS T ON PT.idTesis=T.id;

--(4) NUMERO DE TESISTAS POR CARRERA
SELECT C.nombre AS Carrera,COUNT(C.codigoCarrera) AS Cantidad FROM profesores AS P INNER JOIN  carreras AS C ON P.carrera=C.codigoCarrera INNER JOIN profesorytesis AS PT ON PT.correo=P.correo INNER JOIN tesistas AS T ON PT.idTesis=T.id GROUP BY C.codigoCarrera;

-- (x)
SELECT P.nombre,P.correo, idTesis, COUNT(idTesis) FROM profesorytesis AS PT INNER JOIN profesores AS P ON PT.correo=P.correo  GROUP BY(idTesis);
--(x) Numero de tesistas por profesor de una carrera con más atributos
SELECT P.nombre Profesor,P.correo AS Correo,C.nombre AS Carrera,PT.idTesis,COUNT(PT.idTesis) FROM profesorytesis AS PT INNER JOIN profesores AS P ON PT.correo=P.correo  INNER JOIN carreras AS C ON P.carrera=C.codigoCarrera GROUP BY(PT.idTesis) ORDER BY(Carrera);
    --(5).- NUMERO DE TESISTAS POR PROFESOR DE UNA CARRERA
    SELECT P.nombre Profesor,C.nombre AS Carrera,COUNT(PT.idTesis) AS NumeroDeTesistas FROM profesorytesis AS PT INNER JOIN profesores AS P ON PT.correo=P.correo  INNER JOIN carreras AS C ON P.carrera=C.codigoCarrera GROUP BY(PT.idTesis) ORDER BY(Carrera);
--(6) NUMERO DE MATERIAS POR PRODESOR DE UNA CARRERA
SELECT P.nombre,C.nombre,COUNT(P.nombre) FROM profesorymateria AS PT INNER JOIN profesores AS P ON PT.profesor=P.correo INNER JOIN carreras AS C ON C.codigoCarrera=P.carrera GROUP BY(P.nombre);

--(7)
SELECT P.nombre,C.nombre,COUNT(P.nombre) FROM profesorymateria AS PM INNER JOIN profesores AS P ON PM.profesor=P.correo INNER JOIN carreras AS C ON C.codigoCarrera=P.carrera GROUP BY(P.nombre);

--(9)
SELECT P.nombre,C.nombre,COUNT(P.nombre) FROM eventos AS E INNER JOIN profesores AS P ON E.profesor=P.correo INNER JOIN carreras AS C ON C.codigoCarrera=P.carrera GROUP BY(P.nombre);