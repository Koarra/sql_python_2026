/*join types*/
SELECT 
	* 
FROM sql_2026.cours_de_danse
INNER JOIN 
sql_2026.cours_de_musique
ON cours_de_danse.id = cours_de_musique.id
;


-- /*left join*/
SELECT 
	CERCLE_A.*,
    CERCLE_B.PERMIS_B
FROM sql_2026.cours_de_musique AS CERCLE_A 
LEFT JOIN 
sql_2026.cours_de_danse AS CERCLE_B
ON CERCLE_A.id = CERCLE_B.id;

-- LEFT ANTI JOIN
SELECT 
	CERCLE_A.*,
    CERCLE_B.PERMIS_B
FROM sql_2026.cours_de_musique AS CERCLE_A 
LEFT JOIN 
sql_2026.cours_de_danse AS CERCLE_B
ON CERCLE_A.id = CERCLE_B.id
WHERE CERCLE_B.ID IS NULL; /*EXACTEMENT COMME LEFT JOIN MAIS AVEC ce WHERE qui va permettre d'operer le left anti join */
-- uniquement 03x ne va qu'au cours de musique et il a la capacite d'aller a un autre cours. 


-- FULL OUTER JOIN 
-- Je veux la liste des eleves qui ne vont uniquement qu'au cours de danse OU uniquement au cours de musique (equivalent de 2 left anti join, qu'on va additioner l'un avec l'autre)
SELECT 
	CERCLE_A.*
FROM sql_2026.cours_de_musique AS CERCLE_A
LEFT JOIN sql_2026.cours_de_danse AS CERCLE_B 
ON CERCLE_A.id = CERCLE_B.id 
WHERE CERCLE_B.id IS NULL 
UNION -- UNION DES 2 TABLES
SELECT
	CERCLE_B.*
FROM sql_2026.cours_de_danse AS CERCLE_B
LEFT JOIN sql_2026.cours_de_musique AS CERCLE_A
ON CERCLE_A.id = CERCLE_B.id
WHERE CERCLE_A.id IS NULL;


-- FULL JOIN 
-- Je veux toutes les personnes presentes aux deux cours
-- union entre 2 tables qui doivent avoir la meme structure durant cette operation
SELECT
	CERCLE_A.*
FROM sql_2026.cours_de_musique AS CERCLE_A
UNION
SELECT
	CERCLE_B.*
FROM sql_2026.cours_de_danse AS CERCLE_B




