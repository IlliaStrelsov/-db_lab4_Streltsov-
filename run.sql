-- Функція, яка виводить кількість продаж ігри по світу

CREATE OR REPLACE FUNCTION world_sales(video_game_identity INT)
RETURNS FLOAT
LANGUAGE 'plpgsql'
AS $$
DECLARE sum_of_sales FLOAT;

BEGIN
	sum_of_sales := (SELECT NA_sales from na_sales where video_game_id = video_game_identity);
	RETURN sum_of_sales;
END;
$$;

SELECT world_sales(1); 


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


-- Триггер для додавання у таблицю na_new_sales при кожному оновленні таблиці na_sales рядків з інформацією про
-- кількість  покупок гри

DROP TABLE IF EXISTS na_new_sales;
CREATE TABLE na_new_sales(
	id SERIAL PRIMARY KEY,
	inserted_at TIMESTAMP,
	difference FLOAT NOT NULL
);

CREATE OR REPLACE FUNCTION difference_na_sales() RETURNS trigger AS
$$
BEGIN
	INSERT INTO na_new_sales(inserted_at, difference)
	VALUES(NOW(), (select na_sales from na_sales LIMIT 1));
	RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER show_update_na_sales
AFTER INSERT ON na_sales
FOR EACH ROW EXECUTE FUNCTION difference_na_sales();

INSERT INTO na_sales(na_sales,sales_date,video_game_id)
VALUES  (41.49,'01.01.2020',10);

INSERT INTO na_sales(na_sales,sales_date,video_game_id)
VALUES  (29.08,'01.01.2020',11);

SELECT * FROM na_new_sales; 
