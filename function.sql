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
