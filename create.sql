CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY  ,
	company_name VARCHAR(20)
);

CREATE TABLE video_games(
    video_game_id SERIAL PRIMARY KEY ,
    video_game_name VARCHAR(100),
	video_game_platform VARCHAR(50),
	video_game_genre VARCHAR(50),
	year_of_publication INT,
	company_id INT REFERENCES companies(company_id), 
);

CREATE TABLE na_sales(
	NA_sales_id SERIAL PRIMARY KEY ,
	NA_sales FLOAT,
	sales_date DATE,
	video_game_id INT REFERENCES video_games(video_game_id)
);

CREATE TABLE eu_sales(
	EU_sales_id SERIAL PRIMARY KEY ,
	EU_sales FLOAT,
	sales_date DATE,
	video_game_id INT REFERENCES video_games(video_game_id)
);

CREATE TABLE jp_sales(
	JP_sales_id SERIAL PRIMARY KEY ,
	JP_sales FLOAT,
	sales_date DATE,
	video_game_id INT REFERENCES video_games(video_game_id)
);

CREATE TABLE other_sales(
	other_sales_id SERIAL PRIMARY KEY ,
	other_sales FLOAT,
	sales_date DATE,
	video_game_id INT REFERENCES video_games(video_game_id)
);
