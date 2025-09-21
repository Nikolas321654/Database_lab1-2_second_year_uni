CREATE TABLE user_account (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  login VARCHAR(64) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL, 
  version INT NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  updated_at TIMESTAMP NULL
);

CREATE TABLE artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    grammy BOOLEAN DEFAULT FALSE
);

CREATE TABLE album (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    year INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(id)
);

CREATE TABLE track (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    duration INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(id),
    FOREIGN KEY (album_id) REFERENCES album(id)
);

CREATE TABLE user_playlist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
	user_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES user_account(id) ON DELETE CASCADE
);

CREATE TABLE playlist_track  (
    track_id INT NOT NULL,
    playlist_id INT NOT NULL,
	PRIMARY KEY (playlist_id, track_id),
	position INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (track_id) REFERENCES track(id) ON DELETE CASCADE,
	FOREIGN KEY (playlist_id) REFERENCES user_playlist(id) ON DELETE CASCADE,
	UNIQUE(playlist_id, position)
	
);



