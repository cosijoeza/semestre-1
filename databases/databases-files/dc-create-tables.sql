DROP DATABASE IF EXISTS data_science;
CREATE DATABASE data_science;
USE data_science;
DROP TABLE IF EXISTS institutos;
DROP TABLE IF EXISTS carreras;
DROP TABLE IF EXISTS profesores;
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
CREATE TABLE institutos(
    codigo INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(59) NOT NULL,
);
CREATE TABLE carreras(
    codigoCarrera INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(65) NOT NULL,
    codigoInstituto INTEGER NOT NULL,
    siglas VARCHAR(5) NOT NULL,
    FOREIGN KEY (codigoInstituto) REFERENCES institutos(codigo)
);
CREATE TABLE profesores(
    id INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(39),
    correo VARCHAR(37),
    password VARCHAR(16),
    nivel INTEGER,
    instituto INTEGER NOT NULL,
    grado VARCHAR(16),
    carrera INTEGER,
    tipo INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY (carrera) REFERENCES carreras(codigoCarrera),
    FOREIGN KEY (instituto) REFERENCES institutos(codigo)
);
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
    id INTEGER NOT NULL AUTO_INCREMENT,
    numero bigint(11) NOT NULL,
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
    PRIMARY KEY(id)
);
CREATE TABLE ca (
    id INTEGER NOT NULL AUTO_INCREMENT,
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
    PRIMARY KEY(id)
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