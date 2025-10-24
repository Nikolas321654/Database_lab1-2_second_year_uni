INSERT INTO user_account (name, login, password)
VALUES ('Alex1', 'alex1', 'secret');
INSERT INTO user_account (name, login, password, version)
VALUES ('Alex2', 'alex2', 'secret1', 2);
INSERT INTO user_account (name, login, password, version)
VALUES ('Alex3', 'alex3', 'secret2', 3);

INSERT INTO artist (name, grammy)
VALUES ('AC/DC', false);
INSERT INTO artist (name, grammy)
VALUES ('Metallica', true);
INSERT INTO artist (name, grammy)
VALUES ('Michael Jackson', true);

INSERT INTO album (name, year, artist_id)
VALUES ('Back in Black', 1980, 1);
INSERT INTO album (name, year, artist_id)
VALUES ('Kill ’’Em All', 1983, 2);
INSERT INTO album (name, year, artist_id)
VALUES ('Bad', 1987, 3);

INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Hells Bells', 1, 1, 312);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Shoot to Thrill', 1, 1, 321);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Back in Black', 1, 1, 255);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('You Shook Me All Night Long', 1, 1, 210);

INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Hit the Lights', 2, 2, 257);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('The Four Horsemen', 2, 2, 433);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Seek & Destroy', 2, 2, 415);

INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Bad', 3, 3, 247);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('The Way You Make Me Feel', 3, 3, 298);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Man in the Mirror', 3, 3, 321);
INSERT INTO track (name, artist_id, album_id, duration)
VALUES ('Dirty Diana', 3, 3, 294);

INSERT INTO user_playlist (name, user_id, created_at)
VALUES ('Rock Classics', 1, CURRENT_TIMESTAMP);
INSERT INTO user_playlist (name, user_id, created_at)
VALUES ('Workout Mix', 2, CURRENT_TIMESTAMP);
INSERT INTO user_playlist (name, user_id, created_at)
VALUES ('Chill Vibes', 3, CURRENT_TIMESTAMP);

INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (3, 1, 1);  
INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (4, 1, 2); 
INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (7, 1, 3); 
INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (11, 1, 4);

INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (2, 2, 1); 
INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (6, 2, 2); 
INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (9, 2, 3);

INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (10, 3, 1);
INSERT INTO playlist_track (track_id, playlist_id, position)
VALUES (4, 3, 2);