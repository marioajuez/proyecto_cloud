CREATE DATABASE EQUIPO;
USE EQUIPO;

CREATE TABLE Pais(
	Cod_pais int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre_p varchar (30)
    );
CREATE TABLE Jugador(
	id_jugador int(11) AUTO_INCREMENT NOT NULL,
	nombre varchar (30),
	Cod_pais int(11),
	PRIMARY KEY(id_jugador),	
	FOREIGN KEY fk_Cod_pais_1(Cod_pais) references Pais(Cod_pais)
    );

CREATE TABLE Equipo (
	Cod_equi int(11) AUTO_INCREMENT NOT NULL,
	Nombre_e varchar (50),
	Cod_pais int(11),
	PRIMARY KEY(Cod_equi),
	FOREIGN KEY fk_Cod_pais_2(Cod_pais) references Pais(Cod_pais)
    );
    
CREATE TABLE Jugador_equipo(

	cod_je int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
	fecha_ini date,
	fecha_fin date,
    id_jugador int(11),
	Cod_equi int(11),
    FOREIGN KEY fk_id_jugador(id_jugador) references Jugador(id_jugador),
    FOREIGN KEY fk_Cod_equi(Cod_equi) references Equipo(Cod_equi)
);


   
INSERT INTO EQUIPO.Pais (Cod_pais, Nombre_p) VALUES 
   (1,"INGLATERRA"), 
   (2,"ESPAÑA" ), 
   (3,"ITALIA");
   
INSERT INTO EQUIPO.Equipo(Cod_equi, Nombre_e, Cod_pais) VALUES 
    (1,"BARCELONA FC",2), 
    (2,"CHELSEA",1), 
    (3,"REAL MADRID",2),
	(4,"JUVENTUS",3),
    (5,"ARSENAL",1);
   
INSERT INTO EQUIPO.Jugador (id_jugador, nombre, Cod_pais) VALUES 
   (1,"ANDRES INIESTA",2), 
   (2,"ANDREA PIRLO",3 ), 
   (3,"FRANK LAMPARD",1);
   
INSERT INTO EQUIPO.Jugador_equipo (cod_je, fecha_ini, fecha_fin, id_jugador, Cod_equi) VALUES 
   (1,"2019-03-16","2020-05-19",1,1), 
   (2,"2017-03-16","2018-09-19",2,2),
   (3,"2016-03-16","2017-03-19",3,3);
  