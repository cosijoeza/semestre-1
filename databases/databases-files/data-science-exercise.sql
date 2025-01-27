USE data_science;
DROP TABLE IF EXISTS profesoryarticulo;
DROP TABLE IF EXISTS profesorycomision;
DROP TABLE IF EXISTS profesorymateria;
DROP TABLE IF EXISTS profesorytesis;
DROP TABLE IF EXISTS actividades;
DROP TABLE IF EXISTS articulos;
DROP TABLE IF EXISTS ca;
DROP TABLE IF EXISTS comision;
DROP TABLE IF EXISTS eventos;
DROP TABLE IF EXISTS materias;
DROP TABLE IF EXISTS planes;
DROP TABLE IF EXISTS profesoryarticulo;
DROP TABLE IF EXISTS profesorycomision;
DROP TABLE IF EXISTS profesorymateria;
DROP TABLE IF EXISTS profesorytesis;
DROP TABLE IF EXISTS sni;
DROP TABLE IF EXISTS tesistas;
CREATE TABLE actividades (
    id INTEGER NOT NULL AUTO_INCREMENT,
    idProfesor INTEGER,
    correoProfesor text DEFAULT NULL,
    actividad text DEFAULT NULL,
    inicio date DEFAULT NULL,
    fin date NOT NULL,
    descripcion text DEFAULT NULL,
    validado tinyint(4) NOT NULL DEFAULT 1,
    comprobante text NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (idProfesor) REFERENCES profesores(id)
);
CREATE TABLE articulos (
    id INTEGER NOT NULL,
    numero bigint(11) NOT NULL AUTO_INCREMENT,
    tipoCRL text NOT NULL,
    titulo text NOT NULL,
    nombreCRL text NOT NULL,
    tipoNI text NOT NULL,
    volumen text NOT NULL,
    paginas text NOT NULL,
    anyo text NOT NULL,
    issnisbn text NOT NULL,
    doi text NOT NULL,
    estado text NOT NULL,
    fechaedicion date NOT NULL,
    comprobante text NOT NULL,
    indexada text NOT NULL,
    issue text NOT NULL,
    editores text NOT NULL,
    ciudad text NOT NULL,
    pais text NOT NULL,
    editorial text NOT NULL,
    PRIMARY KEY(numero)
);
CREATE TABLE ca (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    codigo text NOT NULL,
    correo text NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE comision (
    id bigint(20) NOT NULL,
    correoProfesor text NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    asignacion text NOT NULL,
    periodo text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    comprobante varchar(1000) NOT NULL DEFAULT '"no hay"',
    PRIMARY KEY(id)
);
CREATE TABLE eventos (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    correoProfesor text NOT NULL,
    tipoEvento text NOT NULL,
    nombreEvento text NOT NULL,
    participacion text NOT NULL,
    afectaLinea text NOT NULL,
    tipoParticipacion text NOT NULL,
    titulo text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    comprobante text NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE planes (
    id INTEGER NOT NULL AUTO_INCREMENT,
    codigoCarrera INTEGER NOT NULL,
    nombre text NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (codigoCarrera) REFERENCES carreras(codigoCarrera)
);
CREATE TABLE materias (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    idPlan INTEGER NOT NULL,
    nombre text NOT NULL,
    semestre int(11) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (idPlan) REFERENCES planes(id)
);
CREATE TABLE profesoryarticulo (
    id INTEGER NOT NULL AUTO_INCREMENT,
    correo varchar(100) NOT NULL,
    numero bigint(11) NOT NULL,
    pos int(11) NOT NULL DEFAULT 1,
    validado tinyint(4) NOT NULL DEFAULT 1,
    PRIMARY KEY(id),
    FOREIGN KEY (numero) REFERENCES articulos(numero)
);
CREATE TABLE profesorycomision (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    correoProfesor text NOT NULL,
    idComision bigint(20) NOT NULL,
    pos int(11) NOT NULL,
    final date DEFAULT NULL,
    comprobante text NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (idComision) REFERENCES comision(id)
);
CREATE TABLE profesorymateria (
    id INTEGER NOT NULL AUTO_INCREMENT,
    profesor text NOT NULL,
    idMateria bigint(20) NOT NULL,
    grupo int(11) NOT NULL,
    anyo int(11) NOT NULL,
    nombrePeriodo text NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (idMateria) REFERENCES materias(id)
);
CREATE TABLE profesorytesis (
    id INTEGER NOT NULL AUTO_INCREMENT,
    correo text NOT NULL,
    rol text NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE sni (
    id INTEGER NOT NULL AUTO_INCREMENT,
    correoProfesor text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    nivelSNI text NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE tesistas (
    id INTEGER NOT NULL AUTO_INCREMENT,
    matricula text NOT NULL,
    status text NOT NULL,
    inicioTesis date NOT NULL,
    finTesis date NOT NULL,
    nombreTesis text NOT NULL,
    nombreEstudiante text NOT NULL,
    nivel varchar(20) NOT NULL DEFAULT 'Licenciatura',
    comprobante text NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO `actividades` (
        `correoProfesor`,
        `actividad`,
        `inicio`,
        `fin`,
        `descripcion`,
        `id`,
        `validado`,
        `comprobante`
    )
VALUES (
        'xxxx@mixteco.utm.mx',
        'Elaboración de reactivos para el examen de selección para ingenierías SUNEO 2016 ',
        '2016-05-13',
        '2016-01-01',
        'Esta actividad se realiza para poder generar ...',
        1,
        1,
        ''
    );
INSERT INTO `articulos` (
        `numero`,
        `tipoCRL`,
        `titulo`,
        `nombreCRL`,
        `tipoNI`,
        `volumen`,
        `paginas`,
        `anyo`,
        `issnisbn`,
        `doi`,
        `estado`,
        `fechaedicion`,
        `comprobante`,
        `indexada`,
        `issue`,
        `editores`,
        `ciudad`,
        `pais`,
        `editorial`
    )
VALUES (
        1,
        'Congreso',
        'Small Petal Tools used to Parabolize Mirrors',
        'OSA Latin America Optics & Photonics Conference (LAOP) 2016',
        'Internacional',
        '',
        '1-3',
        '2016',
        'ISBN',
        'https://doi.org/10.1364/LAOP.2016.LTu4A.19',
        'Publicado',
        '2016-08-22',
        '1jgonzal@mixteco.utm.mx.pdf',
        'No',
        '',
        '',
        '',
        '',
        ''
    );
INSERT INTO `ca` (`codigo`, `correo`)
VALUES ('UTMIX-CA-40', 'icorrales@mixteco.utm.mx');
INSERT INTO `comision` (
        `id`,
        `correoProfesor`,
        `nombre`,
        `descripcion`,
        `asignacion`,
        `periodo`,
        `inicio`,
        `fin`,
        `comprobante`
    )
VALUES (
        20180807173954,
        'erikue@gmail.com',
        'Comision para la seleccion de alumnos de nuevo ingreso de la carrera de Ingenieria en Computacion',
        'Analizar la situacion academica de los alumnos de nuevo ingreso',
        'Jefatura',
        'Definido',
        '2018-07-02',
        '2019-06-30',
        ''
    );
INSERT INTO `eventos` (
        `id`,
        `correoProfesor`,
        `tipoEvento`,
        `nombreEvento`,
        `participacion`,
        `afectaLinea`,
        `tipoParticipacion`,
        `titulo`,
        `inicio`,
        `fin`,
        `comprobante`
    )
VALUES (
        20170707085234,
        'erikue@gmail.com',
        'Congreso',
        'IX Simposium de Software Libre de la Mixteca',
        'Nacional',
        'Si',
        'Asistente',
        'Herramientas usadas en el desarrollo de un sistemas de localizacion en interiores',
        '2017-04-26',
        '2017-04-28',
        ''
    );
INSERT INTO `planes` (`id`, `codigoCarrera`, `nombre`)
VALUES (1, '02', '4');
INSERT INTO `materias` (`id`, `idplan`, `nombre`, `semestre`)
VALUES (1, 1, 'Programación estructurada', 1);
INSERT INTO `profesoryarticulo` (`correo`, `numero`, `pos`, `validado`)
VALUES ('abad@mixteco.utm.mx', 20171018115136, 1, 1);
INSERT INTO `profesorycomision` (
        `id`,
        `correoProfesor`,
        `idComision`,
        `pos`,
        `final`,
        `comprobante`
    )
VALUES (
        20180807185505,
        'caff@mixteco.utm.mx',
        20180807173954,
        2,
        NULL,
        '20180928105904caff@mixteco.utm.mx.pdf'
    );
INSERT INTO `profesorymateria` (
        `id`,
        `profesor`,
        `idMateria`,
        `grupo`,
        `anyo`,
        `nombrePeriodo`
    )
VALUES (1, 'erikue@gmail.com', 1, 0, 2017, 'Verano');
INSERT INTO `profesorytesis` (`correo`, `id`, `rol`)
VALUES ('sreyes@mixteco.utm.mx', 1, 'Director');
INSERT INTO `sni` (`correoProfesor`, `inicio`, `fin`, `nivelSNI`)
VALUES (
        'rafaelmtz@mixteco.utm.mx',
        '2020-01-01',
        '2024-12-31',
        'Nivel I'
    );
INSERT INTO `tesistas` (
        `matricula`,
        `status`,
        `inicioTesis`,
        `finTesis`,
        `nombreTesis`,
        `id`,
        `nombreEstudiante`,
        `nivel`,
        `comprobante`
    )
VALUES (
        '2009070114',
        'En proceso',
        '2016-01-31',
        '2016-01-01',
        'El metodo de variacion total como un metodo de Regularizacion del problema de reconstruccion de dominios perdidos en imagenes',
        1,
        '',
        'Licenciatura',
        ''
    );