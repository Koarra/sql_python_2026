/* JOINs*/



/* INNER JOINS*/
SELECT * FROM cours_de_danse
INNER JOIN 
cours_de_musique
ON cours_de_danse.id = cours_de_musique.id



-- /*left join*/
SELECT * FROM cours_de_danse AS CERCLE_A 
LEFT JOIN 
cours_de_musique AS CERCLE_B
ON CERCLE_A.id = CERCLE_B.id

-- LEFT ANTI JOIN
SELECT * FROM cours_de_danse AS CERCLE_A 
LEFT ANTI JOIN 
cours_de_musique AS CERCLE_B
ON CERCLE_A.id = CERCLE_B.id
