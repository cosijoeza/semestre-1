CREATE TABLE institutos(
   codigo INTEGER  NOT NULL PRIMARY KEY 
  ,nombre VARCHAR(59) NOT NULL
);

CREATE TABLE carreras(
   codigoCarrera   INTEGER  NOT NULL PRIMARY KEY 
  ,nombre          VARCHAR(65) NOT NULL
  ,codigoInstituto INTEGER  NOT NULL FOREIGN KEY REFERENCES institutos(codigo)
  ,siglas          VARCHAR(5) NOT NULL
);

CREATE TABLE profesores(
   nombre    VARCHAR(39) NOT NULL PRIMARY KEY
  ,correo    VARCHAR(37) NOT NULL
  ,password  VARCHAR(16)
  ,nivel     INTEGER  NOT NULL
  ,instituto INTEGER  NOT NULL FOREIGN KEY REFERENCES institutos(codigo)
  ,grado     VARCHAR(16) NOT NULL
  ,carrera   INTEGER FOREIGN KEY REFERENCES carreras(codigoCarrera)
  ,tipo      INTEGER  NOT NULL
);

INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alicia Santiago Santos','alicia@mixteco.utm.mx','alis',4,004,'Dra.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Armando Alcalá Vallejo','avallejo@mixteco.utm.mx','gdfgdf',4,004,'M.M.M.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Franco Barragán Mendoza','franco@mixteco.utm.mx','matemendoza',3,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Luz Del Carmen Álvarez Marín','lalvarez@mixteco.utm.mx','hgf',4,004,'Dra.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Cuauhtémoc Héctor Castañeda Roldán','ccroldan@mixteco.utm.mx','bvb',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Graciela Castro González','castro@mixteco.utm.mx','IFM-cb29',4,004,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Luis Hernández López','jlopez@mixteco.utm.mx','rewe',4,004,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Margarito Hernández Morales','jmhm@mixteco.utm.mx','bvccbc',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Guillermo Arturo Lancho Romero','lanchoga@mixteco.utm.mx','gfgdf',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mario Lomeli Haro','mario.lomeli@gmail.com','n4lguit4n3gr4',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Adolfo Maceda Méndez','admm@mixteco.utm.mx','tryr',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Carlos Mendoza Santos','jcsantos@mixteco.utm.mx','dfggdf',4,004,'Lic.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alma Lidia Piceno Rivera','apiceno@mixteco.utm.mx','picenoa112020',4,004,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Tirso Miguel Ángel Ramírez Solano','mramirez@mixteco.utm.mx','utmmtu',4,004,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Silvia Reyes Mora','sreyes@mixteco.utm.mx','sindocouni',5,100,'Dra.',63,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Salvador Sánchez Perales','ssanchez@mixteco.utm.mx','mjk48tj',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jesús Fernando Tenorio Arvide','jtenorio@mixteco.utm.mx','tenorio',2,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Vulfrano Tochihuitl Bueno','vtochi@mixteco.utm.mx','ewqeq',4,004,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Raúl Juárez Amaro','rjamaro@mixteco.utm.mx','vdkj',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ana Delia Olvera Cervantes','ana.olvera@mixteco.utm.mx','gfghwf',4,014,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jorge González García','jgonzal@mixteco.utm.mx','bgdtte',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Salomón González Martínez','salomong@mixteco.utm.mx','gedvgd',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Iván René Corrales Mendoza','icorrales@mixteco.utm.mx','gfssaw32',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Maxvell Gustavo Jiménez Escamilla','maxvell@mixteco.utm.mx','potecx',3,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Julián Javier Carmona Rodríguez','jcarmona@mixteco.utm.mx','rewvv',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Hugo David Sánchez Chávez','hchavez@mixteco.utm.mx','hds100578',4,014,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Angel S. Cruz Félix','sinue@mixteco.utm.mx','astrid07',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ricardo Rosas Rodríguez','rrosas@mixteco.utm.mx','czx',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Verónica Borja Macías','vero0304@mixteco.utm.mx','piotzin2018',4,014,'Dra.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jesús Alejandro Hernández Tello','alheran@mixteco.utm.mx','tonantzin',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José del Carmen Jiménez Hernández','jcjim@mixteco.utm.mx','jimenez',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Marisol López Cerino','marisol@mixteco.utm.mx','gjghjg',4,014,'Dra.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Armando Romero Morales','armando@mixteco.utm.mx','122191',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Ramón Tijerina González','ramon@mixteco.utm.mx','lupus68',4,004,'M.C.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Luis Carrasco Pacheco','pacheco@mixteco.utm.mx','110274',4,004,'M.M.M.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rafael Martínez Martínez','rafaelmtz@mixteco.utm.mx','rewjnde',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Sergio Palafox Delgado','palafox@mixteco.utm.mx','tdg584230',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alejandro Iván Aguirre Salado','aleaguirre@mixteco.utm.mx','aias2016',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Virgilio Vázquez Hipólito','virgilio@mixteco.utm.mx','limaviyuhaviv',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Erik Germán Ramos Pérez','erikue@gmail.com','prueba',4,002,'M.T.C.A.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Octavio Alberto Agustín Aquino','octavioalberto@mixteco.utm.mx','octavioalberto',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Moisés Emmanuel Ramírez Guzmán','merg@mixteco.utm.mx','moy',4,002,'M.T.C.A.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Raúl Cruz Barbosa','rcruz@mixteco.utm.mx','barbosa2017',4,002,'Dr.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Manuel Hernández Gutiérrez','manuelhg@mixteco.utm.mx','manuel',4,002,'Dr.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Moises Homero Sánchez López','moises@mixteco.utm.mx','Cluster2007',4,002,'Dr.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Everth Haydee Rocha Trejo','everth@mixteco.utm.mx','everth',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('David Martínez Torres','dtorres@mixteco.utm.mx','Mtz_Utm_Torres17',4,002,'Ing.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Luis Anselmo Zarza López','zarza@mixteco.utm.mx','gatoGatoGato',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mario Alberto Moreno Rocha','mmoreno@mixteco.utm.mx','moreno',1,002,'L.I.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Carlos Alberto Fernández  y Fernández','caff@mixteco.utm.mx','carlosaWxy',2,002,'Dr.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Verónica Rodríguez López','veromix@mixteco.utm.mx','dcCompu17',4,002,'Dra',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Enrique Alejandro López López','alopez@mixteco.utm.mx','enrique',3,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Gerardo Cruz González','gercruz@mixteco.utm.mx','gerardo',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jorge Arturo Hernández Perales','jahdezp@mixteco.utm.mx','jorge',4,002,'Ing.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Juárez Fuentes','jjf@mixteco.utm.mx','juan',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María Esperanza Pérez Cordoba Sánchez','mapercor@mixteco.utm.mx','UTMDat2018',4,002,'Lic.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mónica Edith García García','mgarcia@mixteco.utm.mx','monica',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ricardo Ruiz Rodríguez','rruiz@mixteco.utm.mx','cubo36@UTM',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Laura Catalina Torres Araujo','ltaraujo@mixteco.utm.mx','entrada',4,002,'MPSE',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Hugo Enrique Martínez Cortés','hugoe@mixteco.utm.mx','hugo',4,002,'M.I.S.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Celia Bertha Reyes Espinoza','creyes@mixteco.utm.mx','celia91',4,002,'M.E.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Wendy Yaneth García Martínez','yaneth@mixteco.utm.mx','lombriz23',4,002,'Ing.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Liliana Eneida Sánchez Platas','liliana@mixteco.utm.mx','liliana',4,003,'Dra.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Fernando Iturbide Jiménez','iturbide@mixteco.utm.mx','fernando',4,003,'M.D.I.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Maria De La Luz Palacios Villavicencio','luzpavi@mixteco.utm.mx','Dir_Luz_2018',2,003,'Dra.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Eruvid Cortés Camacho','eruvid@mixteco.utm.mx','eruvid',4,003,'Ing.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alejandra Velarde Galván','alevelar@mixteco.utm.mx','nenita95',4,003,'Dra.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alfonso Acosta Romero','acosta@mixteco.utm.mx','alfonso',4,003,'D.C.G.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jorge Vázquez  Sánchez','jvazquez@mixteco.utm.mx','jorge',4,003,'M.A.V.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alejandro Alberto Bravo Guzmán','abravo@mixteco.utm.mx','alejandro',4,003,'M.A.V.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María del Rubí Olivos Contreras','rubi@mixteco.utm.mx','maria',4,003,'Maestría',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Consuelo Jaqueline Estrada Bautista','jaesba@mixteco.utm.mx','consuelo',4,003,'D.G.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Oscar Díaz De León Sánchez','odiaz@mixteco.utm.mx','giselle08',4,003,'Ing.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Armando López Torres','altorres@mixteco.utm.mx','armando',4,003,'Ing.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Agustin Santiago Alvarado','santiago@mixteco.utm.mx','utm901710',4,100,'Dr.',50,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mario Márquez Miranda','mmarquez@mixteco.utm.mx','jefatura2014',4,013,'Dr.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Moisés Manzano Herrera','mmanzano@mixteco.utm.mx','savi7561',4,013,'M.C.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ignacio Hernández Castillo','castillo@mixteco.utm.mx','2019INDUSTRIAL',4,013,'Dr.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Álvaro Jesús Mendoza Jasso','alvaromj@mixteco.utm.mx','alvarodireccion',2,013,'Dr.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Orquídea Sánchez López','orquidea@mixteco.utm.mx','0RQU1D34',4,013,'Dra.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Carlos Vázquez Cid De León','carlosvazquezc@mixteco.utm.mx','carlos',3,013,'Dr.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Elizabeth Duarte Beltrán','eduarte@mixteco.utm.mx','elizabeth',4,013,'Dra.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Alfredo Carazo  Luna','alfredo@mixteco.utm.mx','Alfredo#01',4,013,'Dr.',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Salvador Montesinos González','smontesinos@mixteco.utm.mx','1540',4,013,'Dr',11,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Beatriz Hernández Carlos','bhcarlos@mixteco.utm.mx','dodis1500',3,008,'Dra.',36,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Norma Francenia Santos Sánchez','nsantos@mixteco.utm.mx','Francenia-2017',2,008,'Dra.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Raúl Salas Coronado','rsalas@mixteco.utm.mx','raul',4,008,'Dr.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rogelio Valadez Blanco','rvaladez@mixteco.utm.mx','RogeInv18',4,008,'Dr.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Edith Graciela González Mondragón','edith@mixteco.utm.mx','edith',4,008,'Dra.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mirna Patricia Santiago Gómez','patsanmx@mixteco.utm.mx','mirna',4,008,'Dra.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Paula Cecilia Guadarrama Mendoza','pcgm@mixteco.utm.mx','paula',3,008,'Dra.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Vania Shuhua Robles González','vania@mixteco.utm.mx','vania',5,009,'Dr.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alma Yadira Salazar Govea','almasalazar@mixteco.utm.mx','alma',4,008,'M. en C.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Luz Hermila Villalobos Delgado','vidluz@mixteco.utm.mx','walkers09',4,008,'Dra.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Enrique Lemus Fuentes','elf@mixteco.utm.mx','3nr1qu3',4,008,'Dr',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Evaristo  Isac Velázquez Cruz','eisaac@mixteco.utm.mx','evaristo',4,-008,'M.C.',-06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juana Ramírez Andrade','jramirez@mixteco.utm.mx','juana',4,008,'Q.F.B.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María Gricelda Bravo Villa','gris@mixteco.utm.mx','maria',4,008,'Q.F.B.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Saúl Martínez Ramírez','saulmr@mixteco.utm.mx','saul',4,009,'Dr.',NULL,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Fidencio Sustaita Rivera','sustaita@mixteco.utm.mx','pao111',4,009,'Dr.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('René Morales Luis','rmluis@mixteco.utm.mx','m0r4l35',4,009,'M.C.',NULL,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Gabriela Álvarez Olguín','galvarez@mixteco.utm.mx','gabriela',4,009,'Dra.',NULL,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Corina Cisneros Cisneros','cisneros@mixteco.utm.mx','corina',4,009,'M.C.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Vicencio Cuevas Mendoza','vcuevas@mixteco.utm.mx','vicencio',4,009,'Ing.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Brenda Iris Guadalupe Licona Morán','brenda@mixteco.utm.mx','brenda',2,009,'Ing.',NULL,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Virginia Berrón Lara','berron@mixteco.utm.mx','virginia60',4,100,'Dra.',58,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Olexandr Bondarchuk','alexbond@mixteco.utm.mx','alex15290',4,100,'Dr.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Irma Salinas Pérez','isalinas@mixteco.utm.mx','irma',4,100,'Dra.',50,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Aníbal Arias Aguilar','anibal@mixteco.utm.mx','jose',4,100,'Dr.',50,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ivan Antonio Garcia Pacheco','ivan@mixteco.utm.mx','Baltosito02',4,100,'Dr.',50,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Carla Leninca Pacheco Agüero','leninca@mixteco.utm.mx','Borris01',4,100,'Dra.',58,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Carlos Duran Salazar','jcds@mixteco.utm.mx','juan',4,100,'M.D.E.',50,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Domingo Salazar Mendoza','dsalazar@mixteco.utm.mx','totocaca96',4,008,'Dr.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Patricia Magaly Gallegos Acevedo','gallegos@mixteco.utm.mx','Mineria2018',5,010,'Dra.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Manuel Espinoza Cuadra','juanespinoza@mixteco.utm.mx','28021966',4,010,'Dr.',00,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Marcos Germán Corro Ortíz','corro@mixteco.utm.mx','marcos',4,010,'Ing.',NULL,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Víctor Rodolfo Escalante Jarero','viresc@mixteco.utm.mx','anny66',4,005,'Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Conrado Aguilar Cruz','conrado@mixteco.utm.mx','c0nr4d0',2,005,'Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mónica Teresa Espinosa Espíndola','monitte@mixteco.utm.mx','monica',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Arturo Vargas Santiago','jvargas@mixteco.utm.mx','94603091',4,005,'M.D.F.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Cecilia Ibarra Cantú','cantu@mixteco.utm.mx','cecila',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Lilia Alejandra Flores Castillo','floresaly22@mixteco.utm.mx','lilia',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Perseo Rosales Reyes','perseo@mixteco.utm.mx','perseo',4,005,'M.M.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Olivia Allende-Hernández','oallende@mixteco.utm.mx','oallende123',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Maria Guadalupe Juana Noriega Gómez','gnoriega@mixteco.utm.mx','guadalupe',4,005,'M.A.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Iliana Herrera Arellano','iliana@mixteco.utm.mx','iliana',4,005,'Mtra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Adriana Mejía Alcauter','alcauter@mixteco.utm.mx','sacrovir',4,005,'M.D.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Miguel Ángel Coronado Alcántara','corona@mixteco.utm.mx','NIkola2030',4,005,'M.S.C.E.F.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María De Jesús Pérez Álvarez','mjesus@mixteco.utm.mx','diferente13.',4,005,'C.P.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Yannet Paz Calderón','ypaz@mixteco.utm.mx','23julio_74',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María Luisa Antonieta Guerrero Ramírez','grmary@mixteco.utm.mx','maria',4,005,'M.E.C.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Pablo Tamariz Domínguez','pabtamar@mixteco.utm.mx','Onroda',4,005,'Mtro.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Evelia Acevedo Villegas','evelia@mixteco.utm.mx','saudade',4,005,'M.D.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ricardo García Jiménez','rgarcia@mixteco.utm.mx','ricardo',4,005,'Pots-Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Martín Carlos Ramales Osorio','mramales@mixteco.utm.mx','martin',4,005,'MAPP, MA y MIEGR',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Francisca Adriana Sánchez Meza','fadriana@mixteco.utm.mx','goyito',3,005,'Lic.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Martín Reyes García','mreyesg@mixteco.utm.mx','mmmm4',4,005,'M.A.N.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María Del Carmen Bartolo Moscosa','carmenb@mixteco.utm.mx','091012058',4,005,'M.A.E.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Enrique Guzmán Ramírez','eguzman@mixteco.utm.mx','danlui0408',4,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Marco Antonio Contreras Ordaz','marco.contreras@mixteco.utm.mx','eycf@091030@',4,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Antonio Moreno Espinosa','jamoreno@mixteco.utm.mx','jamoreno',4,001,'M.S.R.C.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Esteban Osvaldo Guerrero Ramírez','eguerrero@mixteco.utm.mx','esteban',4,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Felipe Santiago Espinosa','fsantiag@mixteco.utm.mx','temporal',2,001,'M.C.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Heriberto  Ildefonso Hernández Martínez','hhdez@mixteco.utm.mx','Chiv@S11',4,001,'M.E.D.I.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alejandro Ernesto Ramírez González','ocetxim@mixteco.utm.mx','k0k4k0l1t4',4,001,'M.C.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Fermín Hugo Ramírez Leyva','hugo@mixteco.utm.mx','ferminhugo',4,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Felipe de Jesús Rivera López','frivera@mixteco.utm.mx','FelipeRivera',4,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Enrique Espinosa  Justo','ejusto@mixteco.utm.mx','e21e24j6',4,001,'M.D.S.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Edgardo Yescas Mendoza','yescas@mixteco.utm.mx','y3sc4s1975',3,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Hugo Suárez Onofre','hsuarez@mixteco.utm.mx','hugo',4,001,'Ing.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Arturo Pablo Sandoval García','arturosg@mixteco.utm.mx','arturopsg',4,001,'M.C.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jesús Linares Flores','jlinares@mixteco.utm.mx','jesus',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Antonio Orantes Molina','tonito@mixteco.utm.mx','tonito',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Carlos García Rodríguez','sofosmaster@mixteco.utm.mx','carlos',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Manuel Arias Montiel','mam@mixteco.utm.mx','97300557',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rosebet Miranda Luna','rmiranda@mixteco.utm.mx','rosemilu',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alberto Antonio  García','antoniog@mixteco.utm.mx','alberto',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jorge Luis Barahona Avalos','jbarahona@mixteco.utm.mx','#jicara23#',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Richard Jacinto Marquez Contreras','rmarquez@mixteco.utm.mx','Z6564',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Laura Marquez De Santis','lauramar@mixteco.utm.mx','laura',4,001,'Dra.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Víctor Manuel Cruz Martínez','vmcruzm@mixteco.utm.mx','3lados=990',3,013,'M.C.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Dulce María Clemente Guerrero','dulce@mixteco.utm.mx','dulce',4,003,'M.T.A.M.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Armando Rosas González','arosas@mixteco.utm.mx','armando',4,003,'M.T.A.M.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Emmanuel Abdías Romano Castillo','aromano@mixteco.utm.mx','emmanuel',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Esther Lugo González','elugog@mixteco.utm.mx','elgy1057',3,001,'Dra.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Arturo Tellez Velázquez','atellezv@mixteco.utm.mx','crT75Vtr',4,002,'Dr.',02,1);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Antonio Juárez Abad','abad@mixteco.utm.mx','abad0204$',4,001,'Dr.',04,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jesús Godofredo López Luna','jesuslopezluna@mixteco.utm.mx','jesus',4,005,'Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Martha Angélica Ruíz González','martharuiz@mixteco.utm.mx','martha',4,005,'M.A.N.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ignacio Castellanos Balderas','cabi@mixteco.utm.mx','Nachitron1981',4,005,'Mtro.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Guillermo Juárez López','gjuarezl@mixteco.utm.mx','julg620625',4,011,'Dr.',012,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Josefina Calvo Cortés','jcalvo@mixteco.utm.mx','josefina',4,005,'M.A.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Laura Trujillo Soberanes','ltrujillo@mixteco.utm.mx','laura',4,005,'M.I.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Carlos Alberto Peral Cisneros','carlos.peral@mixteco.utm.mx','C4rlos-p',4,003,'M.F.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ivonne Maya Espinoza','maya@mixteco.utm.mx','ivonne',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Itzcóatl Bolaños Gómez','itzco80@mixteco.utm.mx','itzcomac2018',3,003,'M.A.C.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ludmila Elisa Guzmán Pantoja','ludmila@mixteco.utm.mx',NULL,4,-008,'Dra.',-06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Rodríguez Lázaro','jose@mixteco.utm.mx','jorola',4,003,'Dr.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María del Rosario Barradas Martínez','rosario@mixteco.utm.mx','barradas0810',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Eduardo Sánchez Soto','esanchez@mixteco.utm.mx','rennes@123',4,002,'Dr.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Gabriel Mendoza Larios','jgml@mixteco.utm.mx','larios',4,013,'Dr.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Thalia Isolda Ramírez Reyes','thaliarr@mixteco.utm.mx','thaliarr',4,100,'Dra.',59,1);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Edgar Guevara Avendaño','edkarguevaraa@gmail.com','edkarguevaraa',4,100,'Dr.',59,4);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ricardo Tapia Herrera','rtapia@mixteco.utm.mx','rtapia',4,100,'Dr.',61,1);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Yoshaira Soledad Alexandres Carrizosa','yoshi@mixteco.utm.mx','Yoshagosto2019',4,005,'M.A.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ignacio Arroyo Fernández','iaf@mixteco.utm.mx','anonimo2020-A',4,100,'Dr.',62,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Beatriz Alejandra Orduña Muñoz','anonimo@empresariales','anonimo',4,005,'M.A.N.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Antonio García Hernández','josegahez@mixteco.utm.mx','jose',4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Héctor Gerardo Campos Silva','hcampos@mixteco.utm.mx','campos2020',3,003,'Dr.',32,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jesús Díaz Reyes','jesusdiaz@mixteco.utm.mx','jesus',4,004,'Dr.',07,4);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Christian Eduardo Millán Hernández','cmillanh@mixteco.utm.mx','millan032020',4,002,'Dr.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Avith del Refugio Mendoza Ponce','avith@mixteco.utm.mx','avith112020',4,010,'Dra.',NULL,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Iván Alberto Guillen Cancino','iguillenc@mixteco.utm.mx','guillenmeca',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Alexis Vázquez Villa','avazquez@mixteco.utm.mx','alexis',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Eduardo Barredo Hernández','eduardin@mixteco.utm.mx','eduardo',4,013,'Dr.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Arturo Hernández Méndez','arturohm54@mixteco.utm.mx','aleja1508',4,013,'Dr.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Víctor Hugo Castellanos García','victorhugo@mixteco.utm.mx','CACHORRO12399',4,003,'Mtro.',03,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Gabriel Gerónimo Castillo','gcgero@mixteco.utm.mx',NULL,4,002,'M.C.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Tomás Pérez Becerra','tomas@mixteco.utm.mx','Tomas@2064',5,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Eduardo Cruz Mayo','eduardomayo@mixteco.utm.mx',NULL,4,013,'Ing.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Oscar David Ramìrez Càrdenas','odramirez@mixteco.utm.mx','oscar',4,100,'Dr.',61,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jorge Arellano Hernàndez','jarellano@mixteco.utm.mx',NULL,4,004,'Dr.',07,3);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Cenobio Yescas Aparicio','cenobio@mixteco.utm.mx','x',4,004,'Dr.',07,3);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María del Carmen López Bautista','maria.lopez@mixteco.utm.mx',NULL,4,100,'Dra.',55,3);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Héctor Manuel Arreaga González','arreagahm@mixteco.utm.mx',NULL,4,008,'Dr.',06,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Juan Nicanor Méndez','josejuan@mixteco.utm.mx',NULL,4,100,'Dr.',52,3);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mirna Denisse Barreiro Argüelles','mdbarreiro@mixteco.utm.mx','2022',4,004,'Dra.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mario Zaragoza','marioz@mixteco.utm.mx','x',10,001,'MESOIA.',04,10);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Tania Martinez Manzo','taniam@mixteco.utm.mx','x',10,001,'MESOIA.',04,10);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Javier Montesinos Garcìa','jmontesinos@mixteco.utm.mx','Javier12',4,001,'Dr.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Luis Vázquez Sánchez','luisvazquez@mixteco.utm.mx','x',4,001,'Dr.',14,3);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Luis Eduardo Angoa Caballero','angoaprovis@mixteco.utm.mx','Vale_2208',4,005,'Mtro.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María Yesica Espinosa Cerón','yceron@mixteco.utm.mx','2022',4,004,'Dra.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Saúl Solorio Fernández','solorio@mixteco.utm.mx','2022',4,004,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rafael Aguilar Alderete','raguilaralderete@mixteco.utm.mx','x',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('José Alfredo Soto Álvarez','jose.alfredo@mixteco.utm.mx','jose',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Jetzael Gustavo Barragán Chávez','jbarragan@mixteco.utm.mx','2022',4,003,'Mtro.',32,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Elfego Villalba Cruz','elfego@mixteco.utm.mx',NULL,4,003,'Dr.',32,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Romeo García Báez','romeo.garcia@mixteco.utm.mx',NULL,4,005,'Mtro.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Galdino Cardenal Santos Reyes','galdino.cardel@mixteco.utm.mx','galdino',4,013,'Dr.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('David Bedolla Martínez','dbedolla@mixteco.utm.mx',NULL,4,013,'Mtro.',31,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mario Enrique Herrera Cordero','marcor@mixteco.utm.mx','mario',4,001,'Ing.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Pedro Alberto Antonio Soto','pedroantonio@mixteco.utm.mx','x',4,014,'Dr.',07,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Juan Montes Pérez','juanmp@mixteco.utm.mx','x',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Enrique Valdés Pliego','plaza@mixteco.utm.mx','x',4,005,'Mtro.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ulises Ramírez Meza','ulisesrmeza@mixteco.utm.mx','x',4,004,'Dr.',17,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Miguel Alberto Domínguez Gurría','madg@mixteco.utm.mx','Dguezg2401',4,100,'Dr.',50,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Carlos Alberto Martínez Sandoval','carlosmtz@mixteco.utm.mx','G1324a31g1324a31',4,002,'Ing.',02,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rafael Adrian García García','rafagarcia@mixteco.utm.mx','x',4,001,'Ing.',14,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Araceli Hernández Jiménez','aracelihj@mixteco.utm.mx','x',4,005,'Dra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Onésimo Chavez López','ochavez@mixteco.utm.mx','x',4,005,'Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Leyver Ponce Ruiz','ponce@mixteco.utm.mx','x',4,005,'Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Romer Daniel Oyola Guzmán','oyola_romer@mixteco.utm.mx','x',4,003,'Dr.',32,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Ulises Pérez Salmorán','ulisesps@mixteco.utm.mx','x',4,005,'Mtro.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mónica Leticia Mejía Ramírez','monicamejia@mixteco.utm.mx',NULL,4,005,'Mtra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rebeca Hernández','rebecahdz@mixteco.utm.mx',NULL,4,005,'Mtra.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Profesor 1 Empresariales','profesor1empresariales@mixteco.utm.mx','x',4,005,'Dr.',05,0);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Mónica Morales Jiménez','mmoralesj@mixteco.utm.mx','x',4,008,'Dra.',06,6);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Guyelmo García Santiago','guyelmo_gs@mixteco.utm.mx','x',4,003,'Mtro.',32,6);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Pamela Bibiana Márquez Arellano','pamelamqz@mixteco.utm.mx','x',4,003,'Mtra.',32,5);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Eliezer Luna Rivera','Eliezer@mixteco.utm.mx','x',4,003,'Arq.',32,5);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('María de Jesús Martínez López','mmartinez@mixteco.utm.mx','x',4,004,'Dra.',17,6);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Enrique Reyes Arzola','enriquereyesarzola@mixteco.utm.mx','x',4,013,'Mtro.',11,6);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Claudia Janette Urbano López','claudiaurbano@mixteco.utm.mx','x',4,005,'Mtra.',05,5);
INSERT INTO profesores(nombre,correo,password,nivel,instituto,grado,carrera,tipo) VALUES ('Rocío Martínez González','rosmag@mixteco.utm.mx','x',4,005,'C.P.',05,5);

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

INSERT INTO institutos(codigo,nombre) VALUES
 (002,'Instituto de computación')
,(001,'Instituto de electrónica y mecatrónica')
,(003,'Instituto de diseño')
,(004,'Instituto de física y matemáticas')
,(005,'Instituto de ciencias sociales y humanidades')
,(008,'Instituto de agroindustrias')
,(000,'vice-rectoria académica')
,(100,'Posgrado')
,(009,'Instituto de hidrología')
,(010,'Instituto de minería')
,(011,'Centro de Estudios de Nuevos Materiales')
,(012,'Centro de Idiomas')
,(013,'Instituto de Ingeniería Industrial y Automotriz')
,(014,'Centro de Modelación Matemática, Vinculación y Consultoría');