
CREATE TABLE Spotify_Example (
	 Unique_id INT NOT NULL,
     Country VARCHAR NOT NULL,
	 Popularity FLOAT NOT NULL,
	 Title VARCHAR NOT NULL,
	 Artist VARCHAR NOT NULL,
	 Album_Single VARCHAR NOT NULL,
	 Genre VARCHAR NOT NULL,
	 Artist_followers INT NOT NULL,
	 Explicit VARCHAR NOT NULL,
	 Album VARCHAR NOT NULL,
	 Release_year INT NOT NULL,
	 Track_number INT NOT NULL,
	 Tracks_in_album INT NOT NULL,
	 danceability FLOAT NOT NULL,
	 energy FLOAT NOT NULL,
	 key_music INT NOT NULL,
	 loudness FLOAT NOT NULL,
	 mode_music BOOL NOT NULL,
	 speechiness FLOAT NOT NULL,
	 acoustics FLOAT NOT NULL,
	 instrumentalness FLOAT NOT NULL,
	 liveliness FLOAT NOT NULL,
	 valence FLOAT NOT NULL,
	 tempo FLOAT NOT NULL,
	 duration_ms INT NOT NULL,
	 time_signature INT NOT NULL,
	 PRIMARY KEY (Unique_id)
);


CREATE TABLE Spotify_Geo (
	 Unique_id INT NOT NULL,
     Country VARCHAR NOT NULL,
	 Popularity FLOAT NOT NULL,
	 Title VARCHAR NOT NULL,
	 Artist VARCHAR NOT NULL,
	 Album_Single VARCHAR NOT NULL,
	 Genre VARCHAR NOT NULL,
	 Artist_followers INT NOT NULL,
	 Album VARCHAR NOT NULL,
	 PRIMARY KEY (Unique_id)
);


CREATE TABLE Spotify_Des (
	 Unique_id INT NOT NULL,
	 Explicit VARCHAR NOT NULL,
	 Release_year INT NOT NULL,
	 Track_number INT NOT NULL,
	 Tracks_in_album INT NOT NULL,
	 danceability FLOAT NOT NULL,
	 energy FLOAT NOT NULL,
	 key_music INT NOT NULL,
	 loudness FLOAT NOT NULL,
	 mode_music BOOL NOT NULL,
	 speechiness FLOAT NOT NULL,
	 acoustics FLOAT NOT NULL,
	 instrumentalness FLOAT NOT NULL,
	 liveliness FLOAT NOT NULL,
	 valence FLOAT NOT NULL,
	 tempo FLOAT NOT NULL,
	 duration_ms INT NOT NULL,
	 time_signature INT NOT NULL,
	 PRIMARY KEY (Unique_id)
);


-- Join two tables on Unique_id
SELECT spotify_geo.Artist,
     spotify_geo.Title,
     spotify_geo.Genre,
     spotify_geo.Popularity,
	 spotify_geo.Artist_followers,
	 spotify_des.danceability,
	 spotify_des.energy,
	 spotify_des.key_music,
	 spotify_des.loudness,
	 spotify_des.instrumentalness,
	 spotify_des.liveliness,
	 spotify_des.tempo,
	 spotify_des.duration_ms
FROM spotify_geo
INNER JOIN spotify_des
ON spotify_geo.Unique_id = spotify_des.Unique_id;