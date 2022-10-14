-- 1
SELECT * FROM film WHERE date_sortie > 1960
SELECT titre FROM film WHERE date_sortie < 1960
--2
UPDATE film SET description = "Un film de philosophie qui vous fera réfléchir sur la véracité de notre réalité" WHERE id =35
--3
INSERT INTO film (titre,slug,image,prix,description,date_sortie) VALUES ('Kingsman', 'kingsman', 'kingsman.png', '20', 
" Un film d'espionnage à l'ancienne sans retenu avec la petite touche d'humour britannique comme on les aimes", '2015-02-18')
--4
SELECT commentaire, film.*, user.* FROM commentaire INNER JOIN film ON film.id = 43 INNER JOIN user ON id_user = id_user WHERE id_film = 43
--5
DELETE FROM film WHERE slug LIKE "a%t" 
--6
SELECT DISTINCT user.* FROM commentaire INNER JOIN user WHERE commentaire IS NOT NULL
--7
SELECT id_categorie, film.* FROM films_categs INNER JOIN film ON film.id = id_film WHERE id_categorie = 51
--8
SELECT AVG(note) FROM commentaire
--9
SELECT * FROM film WHERE date_sortie LIKE "%06%" 
--10
SELECT DISTINCT user.* FROM commentaire INNER JOIN user ON user.role = 1 WHERE commentaire IS NOT NULL
