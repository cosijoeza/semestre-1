CREATE TABLE carreras(
   codigoCarrera   INTEGER  NOT NULL PRIMARY KEY 
  ,nombre          VARCHAR(65) NOT NULL
  ,codigoInstituto INTEGER  NOT NULL
  ,siglas          VARCHAR(5) NOT NULL
);
INSERT INTO carreras(codigoCarrera,nombre,codigoInstituto,siglas) VALUES
 (02,'Ingeniería en Computación',002,'IC')
,(04,'Ingeniería en Electrónica',001,'IE')
,(03,'Ingeniería en Diseño',003,'ID')
,(05,'Licenciatura en Ciencias Empresariales',005,'LCE')
,(07,'Licenciatura en Matemáticas Aplicadas',004,'LMA')
,(06,'Ingeniería en Alimentos',008,'IA')
,(11,'Ingeniería Industrial',013,'II')
,(14,'Ingeniería en Mecatrónica',001,'IM')
,(17,'Ingeniería en Física Aplicada',004,'IFA')
,(31,'Ingeniería Mecánica Automotriz',013,'IMA')
,(50,'Maestría en Diseño de Modas',100,'MDMO')
,(51,'Maestría en Diseño de Muebles',100,'MDMU')
,(52,'Maestría en Medios Interactivos',100,'MMI')
,(53,'Maestría en Ciencias de Materiales',100,'MCM')
,(54,'Maestría en Modelación Matemática',100,'MMM')
,(55,'Maestría en Robótica',100,'MR')
,(56,'Maestría en Administración de Negocios',100,'MAN')
,(57,'Maestría en Tecnología Avanzada de Manufactura',100,'MTAM')
,(58,'Maestría en Tecnologías de Cómputo Aplicado',100,'MTCA')
,(59,'Maestría en Ciencias: Productos Naturales y Alimentos',100,'MCPNA')
,(60,'Maestría en Electrónica Opción: Sistemas Inteligentes Aplicados',100,'MESIA')
,(61,'Doctorado en Robótica',100,'DR')
,(62,'Doctorado en Tecnologías de Cómputo Aplicado',100,'DTCA')
,(63,'Doctorado en Modelación Matemática',100,'DMM')
,(64,'Doctorado en Electrónica, Opción: Sistemas Inteligentes Aplicados',100,'DESIA')
,(90,'Licenciatura en Estudios Mexicanos',100,'LEM')
,(91,'Maestría en Sistemas Distribuidos',100,'MSD')
,(012,'Estudios de Nuevos Materiales',011,'ENM')
,(032,'Centro de Idiomas',012,'CI')
,(32,'Ingeniería Civil',003,'ICV')
,(65,'Maestría en Inteligencia Artificial',100,'MIA')
,(66,'Doctorado en Inteligencia Artificial',100,'DIA')
,(67,'Doctorado en Ciencias: Productos Naturales y Alimentos',100,'DCPNA')
,(68,'Maestría en Ingeniería de Software',100,'MIS')
,(36,'Ingeniería Química en Procesos Sostenibles',008,'IQ')
,(37,'Maestría en Ciencia de Datos',100,'MCD');
