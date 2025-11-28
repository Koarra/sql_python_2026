/* step 1 : creer une table clients: 
- varchar format pour les strings
- INT format pour les entiers numeriques
Ce qui se trouve entre parentheses sont les limites en termes de characters.
Par exemple si ville VARCHAR(5): la valeur "PARIS" marchera mais pas "MARSEILLE"
pour les  */
DROP TABLE IF EXISTS sql_2026.clients;
CREATE TABLE sql_2026.clients
( 
nom VARCHAR(30),
prenom VARCHAR(30),
age INT,
ville VARCHAR(30),
marque VARCHAR(20)
);

/*step 2 : add data to the table*/
INSERT INTO sql_2026.clients (nom, prenom, age, ville, country)
VALUES ("Musk","Elon",50,"miami","usa"),
("Mbappe","Kylian",23,"Paris","france"),
("Bryant","Kobe",41,"Los angeles","usa");


/* pour selectionner toutes les colonnes */
SELECT 
* 
FROM sql_2026.clients;

/* pour selectionner uniquement deux colonnes: nom et prenom   */
SELECT 
	nom,
    prenom
FROM sql_2026.clients;


/* ==============
OPERATIONS SUR DES COLONNES
============== */
/* compter le nombre total de lignes de ma table: command COUNT*/
SELECT 
	COUNT(*)
FROM sql_2026.clients;

/* afficher tous les elements uniques d'une colonne, ici on prend la colonne pays: command DISTINCT*/
SELECT
	DISTINCT(pays)
FROM sql_2026.clients;

/* compter le nombre unique de pays */
SELECT
	 COUNT(DISTINCT(pays))
FROM sql_2026.clients;


/*creer une table a partir d'une autre table*/

CREATE TABLE sql_2026.clients2 AS 
SELECT 
	*
FROM sql_2026.clients;

/*ajout de nouvelles colonnes*/
SELECT 
	*,
    pays AS pays2,
    age+10 AS age_in_2035
FROM sql_2026.clients;


/*ajout de nouvelles colonnes*/
SELECT 
	*,
    pays AS pays2,
    age+10 AS age_in_2035
FROM sql_2026.clients;
