--TRUNCATE genres,
--genresmusicians,
--musicians,
--albums,
--songs,
--collectionssongs,
--collections,
--albumsmusicians RESTART IDENTITY;

INSERT INTO genres (name)
	VALUES  ('Folk Music'),
			('Country Music'),
			('Blues'),
			('Jazz'),
			('Chanson');
		
INSERT INTO musicians (name)
	VALUES  ('Musician'),
			('Musician Two'),
			('Musician Three'),
			('Musician Four'),
			('Musician Five'),
			('Six'),
			('Musician Seven'),
			('Eight');
		
INSERT INTO albums (name,year)
	VALUES  ('AlbumOne',2001),
			('AlbumTwo',2019),
			('AlbumThree',2003),
			('AlbumFour',2020),
			('AlbumFive',2018),
			('AlbumSix',2006),
			('AlbumSeven',2007),
			('AlbumEight',2019);
		
INSERT INTO collections (name,year)
	VALUES  ('CollectionOne',2001),
			('CollectionTwo',2020),
			('CollectionThree',2003),
			('CollectionFour',2004),
			('CollectionFive',2005),
			('CollectionSix',2019),
			('CollectionSeven',2007),
			('CollectionEight',2018);
		
INSERT INTO songs (name,length,album_id)
	VALUES  ('my SongOne',3.5,1),
			('SongNCThree',1.25,1),
			('SongTwo',4.5,8),
			('SongThree',3,4),
			('SongFour',1.25,3),
			('SongFive',5,8),
			('SongNCTwo',1.35,1),
			('my SongSix',4,2),
			('my SongSeven',6,1),
			('SongEight',5.2,1),
			('SongNine',2,2),
			('SongTen',3.7,3),
			('SongEleven',2.25,4),
			('my SongTwelve',3.6,5),
			('SongThirteen',3.5,6),
			('my SongFourteen',4.6,7),
			('SongFifteen',5.2,8),
			('SongNCOne',1.25,3);
		
INSERT INTO genresmusicians (musician_id,genre_id)
	VALUES  (1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,1),
			(7,2),
			(8,3);
			
INSERT INTO albumsmusicians (album_id,musician_id)
	VALUES  (1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,6),
			(7,7),
			(8,8);
			
INSERT INTO collectionssongs (song_id,collection_id)
	VALUES  (1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,6),
			(7,7),
			(8,8),
			(9,1),
			(10,2),
			(11,3),
			(12,4),
			(13,5),
			(14,6),
			(15,7);