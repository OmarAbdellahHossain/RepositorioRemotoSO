DROP DATABASE IF EXISTS T1_BBDDFIREBOYandWATERGIRL;
CREATE DATABASE T1_BBDDFIREBOYandWATERGIRL;

USE T1_BBDDFIREBOYandWATERGIRL;

CREATE TABLE JUGADOR (
	ID INT NOT NULL,
	USERNAME VARCHAR(20),
	PASSWD VARCHAR(15),
	PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE PARTIDA (
	ID INT NOT NULL,
	FECHA_HORA VARCHAR(16),
	DURACION INT,
	GANADOR VARCHAR(20),
	PERDEDOR VARCHAR(20),
	MAX_PUNT INT,
	NUM_JUGADORES INT,
	PRIMARY KEY (ID)
)ENGINE=InnoDB;


CREATE TABLE PARTICIPACION (
	ID_J INT NOT NULL,
	ID_P INT NOT NULL,
	NICKNAME VARCHAR(20),
	PUNTUACION INT,
	POSICION INT,
	FOREIGN KEY (ID_J) REFERENCES JUGADOR(ID),
	FOREIGN KEY (ID_P) REFERENCES PARTIDA(ID)
)ENGINE=InnoDB;

INSERT INTO JUGADOR VALUES (1,'Omar','12345678');
INSERT INTO JUGADOR VALUES (2,'Ivan','12345677');
INSERT INTO JUGADOR VALUES (3,'Edgar','12345676');

INSERT INTO PARTIDA VALUES (1,'01-01-2000-00:00',30,'Omar','Ivan',100,3);
INSERT INTO PARTIDA VALUES (2,'02-01-2000-10:00',45,'Omar','Edgar',90,3);
INSERT INTO PARTIDA VALUES (3,'03-01-2000-15:00',50,'Ivan','Edgar',90,3);
INSERT INTO PARTIDA VALUES (4,'04-01-2000-15:00',50,'Edgar','Ivan',90,3);


INSERT INTO PARTICIPACION VALUES (1,2,'Omcito',90,1);
INSERT INTO PARTICIPACION VALUES (2,2,'Toro',70,2);
INSERT INTO PARTICIPACION VALUES (3,2,'Hitman',50,3);
INSERT INTO PARTICIPACION VALUES (1,3,'Omcito',70,2);
INSERT INTO PARTICIPACION VALUES (2,3,'Toro',90,1);
INSERT INTO PARTICIPACION VALUES (3,3,'Hitman',50,3);
INSERT INTO PARTICIPACION VALUES (1,1,'Spiderman',100,1);
INSERT INTO PARTICIPACION VALUES (3,1,'Batman',50,2);
INSERT INTO PARTICIPACION VALUES (2,1,'Hulk',10,3);
INSERT INTO PARTICIPACION VALUES (1,4,'Marco',40,2);
INSERT INTO PARTICIPACION VALUES (3,4,'Polo',90,1);
INSERT INTO PARTICIPACION VALUES (2,4,'Triste',10,3);

