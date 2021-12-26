-- Процедура, яка створює нову таблицю з даними про назви ігор заданого жанру

CREATE OR REPLACE PROCEDURE create_table_with_genre(genre varchar(60))
LANGUAGE 'plpgsql'
AS $$
BEGIN
	DROP TABLE IF EXISTS video_games_by_video_games_genre;
	CREATE TABLE video_games_by_video_games_genre
	AS
	(SELECT video_game_name FROM video_games 
	 WHERE video_game_genre = genre);
END;
$$;

CALL create_table_with_genre('Shooter');
select * from video_games_by_video_games_genre
