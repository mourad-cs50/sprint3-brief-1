CREATE DATABASE club; 
USE club;

    -- membertable
CREATE TABLE member(
    id_member INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(30),
    date_inscription DATE
);
-- tournoitable
CREATE TABLE tournoi(
    id_tournoi INT PRIMARY KEY AUTO_INCREMENT,
    nome_tournoi VARCHAR(20),
    date_tournoi VARCHAR(10),
    id_jeux INT,
    FOREIGN KEY(id_jeux) REFERENCES jeux(id_jeux)
);
-- score
CREATE TABLE score(
    id_score INT PRIMARY KEY AUTO_INCREMENT,
    classment VARCHAR(20),
    recompenses VARCHAR(20),
    score VARCHAR(20),
    id_member INT,
    id_tournoi INT,
    FOREIGN KEY(id_member) REFERENCES member(id_member),
    FOREIGN KEY(id_tournoi) REFERENCES tournoi(id_tournoi)
);
-- abonnement
CREATE TABLE abonnement(
    id_abonnement INT PRIMARY KEY AUTO_INCREMENT,
    type_abonnement VARCHAR(20),
    email VARCHAR(30),
    date_inscription DATE
);
-- avoir un avoirjeux
CREATE TABLE avoirjeux(
    id_avoirjeux INT PRIMARY KEY AUTO_INCREMENT,
    prix FLOAT,
    date_recevoire DATE,
    date_retourne DATE,
    id_jeux INT,
    id_member INT,
    FOREIGN KEY(id_jeux) REFERENCES jeux(id_jeux),
    FOREIGN KEY(id_member) REFERENCES member(id_member)
);
-- table de jeux
CREATE TABLE jeux(
    id_jeux INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(15),
    anne_sortie VARCHAR(10),
    genre VARCHAR(10),
    quantite INT,
    devstudio VARCHAR(10)
);


 -- membertable
INSERT INTO member(nome,email,date_inscription) VALUES
 (1,"mohammed" , "mohammedzat67@gmail.lm" ,CURRENT_DATE() 2025-12-03);
 (2,"mourad" , "mohammedzat67@gmail.lm" , CURRENT_DATE() 2025-12-03);
 (3,"jajaja" , "mohammedzat67@gmail.lm" , CURRENT_DATE() 2025-12-03);
 
SELECT * FROM member;

-- table de jeux
ALTER TABLE jeux
ADD devstudio varchar (10);

 INSERT INTo jeux ( titre, anne_sortie, genre, quantite , devstudio) VALUES
 ("God of War", "2018" , "Aventure" , 40, "Santa Monica Studio");
 ("Minecraft", "2011" , "Survie" , 70, "Mojang Studios");
 ("Assassins Creed Valhalla", "2020" , " RPG" , 55, "Ubisoft");

 SELECT * FROM jeux;
 SELECT titre, genre, devstudio
 FROM jeux;

-- abonnement
 INSERT INTO abonnement ( type_abonnement,email,date_inscription) VALUES
("Payé" ,  "lina.dev93@example.com" ,CURRENT_DATE() 2025-12-04 )
("Non payé" ,  "omar.studio21@testmail.net" ,CURRENT_DATE() 2025-12-04 )
("Payé" ,  "sara.creative.box@demo.org" ,CURRENT_DATE() 2025-12-04 )

 select * FROM abonnement;

-- tournoitable
 INSERT INTO tournoi (nome_tournoi, date_tournoi, id_jeux ) VALUES
("Open de Casablanca","2026-03-15");
("Tournoi du Rif", "2025-12-20");
("Championnat Atlantique","2026-01-10");
select * FROM tournoi;
SELECT * FROM tournoi WHERE nome_tournoi = 'open de casablanca'; 





  
   















