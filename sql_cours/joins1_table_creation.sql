DROP TABLE IF EXISTS sql_2026.cours_de_danse;
DROP TABLE IF EXISTS sql_2026.cours_de_musique;

/*Table 1: cours_De_musique*/

CREATE TABLE sql_2026.cours_de_musique (
    ID VARCHAR(10) PRIMARY KEY,
    NOM VARCHAR(50) NOT NULL,
    PRENOM VARCHAR(50) NOT NULL,
    NOTE INT,
    ADRESSE VARCHAR(100),
    VILLE VARCHAR(50),
    CLASSE VARCHAR(20),
    INTERET_POUR_GEOGRAPHIE VARCHAR(3)
        asdasd
            sadaslkjasdjasd
                asdjasd
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into cours_De_musique
INSERT INTO sql_2026.cours_de_musique 
    (ID, NOM, PRENOM, NOTE, ADRESSE, VILLE, CLASSE, INTERET_POUR_GEOGRAPHIE) 
VALUES
    ('01x', 'Dupont', 'Jean', 17, 'adresse1', 'Paris', 'classe1', 'OUI'),
    ('03x', 'Diallo', 'Lilian', 18, 'adresse3', NULL, 'classe1', 'OUI'),
    ('07x', 'Lin', 'Tony', 15, 'adress7', 'Sarcelles', 'classe2', 'NON');
    
    
/*Creation cours de danse*/
CREATE TABLE sql_2026.cours_de_danse (
    ID VARCHAR(10) PRIMARY KEY,
    NOM VARCHAR(50) NOT NULL,
    PRENOM VARCHAR(50) NOT NULL,
    NOTE INT,
    ADRESSE VARCHAR(100),
    VILLE VARCHAR(50),
    CLASSE VARCHAR(20),
    PERMIS_B VARCHAR(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO sql_2026.cours_de_danse 
    (ID, NOM, PRENOM, NOTE, ADRESSE, VILLE, CLASSE, PERMIS_B) 
VALUES
    ('01x', 'Dupont', 'Jean', 13, 'adresse1', 'Paris', 'classe1', 'OUI'),
    ('02x', 'Kumar', 'Pierre', 13, 'adresse5', 'Lille', 'classe1', 'NON'),
    ('07x', 'Lin', 'Tony', 15, 'adress7', 'Sarcelles', 'classe2', 'OUI');

