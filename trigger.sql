
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

