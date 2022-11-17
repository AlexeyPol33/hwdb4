CREATE TABLE IF NOT EXISTS musicians(
	musician_id SERIAL PRIMARY KEY,
	name varchar(20) NOT NULL UNIQUE);
	
CREATE TABLE IF NOT EXISTS genres(
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR (20) NOT NULL UNIQUE);
	
CREATE TABLE IF NOT EXISTS collections(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR (20) NOT NULL UNIQUE,
	year INTEGER CHECK(1900<year) NOT NULL);
	
CREATE TABLE IF NOT EXISTS albums(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL UNIQUE,
	year INTEGER CHECK(1900<year) NOT NULL);
	
CREATE TABLE IF NOT EXISTS songs(
	song_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL UNIQUE,
	length FLOAT CHECK(length > 0),
	album_id INTEGER REFERENCES albums(album_id));
	
CREATE TABLE IF NOT EXISTS GenresMusicians(
	GenreMusician_id SERIAL PRIMARY KEY,
	musician_id INTEGER REFERENCES musicians(musician_id),
	genre_id INTEGER REFERENCES genres(genre_id));
	
CREATE TABLE IF NOT EXISTS AlbumsMusicians(
	AlbumMusician_id SERIAL PRIMARY KEY,
	musician_id INTEGER REFERENCES musicians(musician_id),
	album_id INTEGER REFERENCES albums(album_id));
	
CREATE TABLE IF NOT EXISTS CollectionsSongs(
	CollectionSong_id SERIAL PRIMARY KEY,
	collection_id INTEGER REFERENCES collections(collection_id),
	song_id INTEGER REFERENCES songs(song_id)
	);