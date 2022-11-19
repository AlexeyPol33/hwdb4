SELECT g2."name" , count(g.musician_id)  FROM genresmusicians g 
JOIN genres g2 ON g.genre_id = g2.genre_id
GROUP BY g2."name";

SELECT count(*)  FROM songs s 
JOIN albums a ON s.album_id  = a.album_id
WHERE a."year" <= 2020 AND a."year" >= 2019;

SELECT a."name" , avg(s.length)  FROM songs s 
JOIN albums a ON s.album_id = a.album_id
GROUP BY a."name"
ORDER BY avg;

SELECT m."name" FROM musicians m
WHERE NOT m.musician_id = 
	(SELECT a.musician_id  
	FROM albumsmusicians a
	JOIN albums a2 ON a.album_id = a2.album_id
	JOIN musicians m2 ON a.musician_id = m2.musician_id
	WHERE a2."year" = 2020);

SELECT c2."name" FROM collectionssongs c 
JOIN collections c2 ON c.collection_id = c2.collection_id
JOIN songs s ON c.song_id = s.song_id 
JOIN albums a  ON a.album_id = s.album_id 
JOIN albumsmusicians a2 ON a2.album_id = a.album_id
JOIN musicians m ON a2.musician_id = m.musician_id
WHERE m."name" ILIKE 'Musician';

SELECT  a2."name" FROM albumsmusicians a
JOIN albums a2 ON a.album_id = a2.album_id
JOIN musicians m ON a.musician_id = m.musician_id
JOIN genresmusicians g ON g.musician_id = m.musician_id
JOIN genres g2 ON g.genre_id = g2.genre_id
GROUP BY  a2."name"
HAVING  count(g2.genre_id) > 1;

SELECT s."name" FROM collectionssongs c
FULL OUTER JOIN songs s ON c.song_id = s.song_id
FULL OUTER JOIN collections c2 ON c.collection_id = c2.collection_id
WHERE c2."name" IS  NULL;

SELECT m."name" FROM albumsmusicians a 
JOIN albums a2 ON a.album_id = a2.album_id
JOIN musicians m ON a.musician_id = m.musician_id
JOIN songs s ON s.album_id = a2.album_id
WHERE s.length = (SELECT min(length)  FROM songs);

SELECT a."name" FROM albums a 
JOIN songs s ON a.album_id = s.album_id
GROUP BY a."name"
HAVING count(s.song_id) =
	(SELECT count(a2.name)
	FROM albums a2
	JOIN songs s2 ON a2.album_id = s2.album_id
	GROUP BY a2.name
	ORDER BY COUNT(a2.name)
	LIMIT 1);





