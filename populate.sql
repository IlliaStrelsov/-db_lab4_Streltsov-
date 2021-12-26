INSERT INTO companies (company_name)
VALUES  ('Nintendo'),
		('Nintendo'),
		('Nintendo'),
		('Microsoft'),
		('Take-Two Interactive'),
		('Take-Two Interactive'),
		('Activision'),
		('Activision'),
		('Electronic Arts');

INSERT INTO video_games(video_game_name,video_game_platform,video_game_genre,year_of_publication,company_id)
VALUES ( 'Wii Sports','Wii','Sports',2006,1),
       ( 'Super Mario Bros.','NES','Platform',1985,2),
       ( 'Mario Kart Wii','Wii','Racing',2008,3),
       ( 'Kinect Adventures!','X360','Misc',2010,4),
	   ( 'Grand Theft Auto V','PS3','Action',2013,5),
	   ( 'Grand Theft Auto: San Andreas','PS2','Action',2004,6),
	   ( 'Call of Duty: Black Ops','X360','Shooter',2010,7),
	   ( 'Call of Duty: Modern Warfare 2','PS3','Shooter',2009,8),
	   ( 'The Sims 3','PC','Simulation',2009,9);

INSERT INTO na_sales(na_sales,sales_date,video_game_id)
VALUES  (41.49,'01.01.2020',1),
		(29.08,'01.01.2020',2),
		(15.85,'01.02.2020',3),
		(14.97,'01.03.2020',4),
		(7.01,'01.04.2020',5),
		(9.43,'01.05.2020',6),
		(9.67,'01.06.2020',7),
		(4.99,'01.07.2020',8),
		(0.98,'01.07.2020',9);

INSERT INTO eu_sales(eu_sales,sales_date,video_game_id)
VALUES  (56.49,'01.01.2020',1),
		(34.08,'01.01.2020',2),
		(18.85,'01.02.2020',3),
		(14.97,'01.03.2020',4),
		(8.01,'01.04.2020',5),
		(10.43,'01.05.2020',6),
		(11.67,'01.06.2020',7),
		(2.99,'01.07.2020',8),
		(1.98,'01.07.2020',9);

INSERT INTO jp_sales(jp_sales,sales_date,video_game_id)
VALUES  (3.77,'01.01.2020',1),
		(6.81,'01.01.2020',2),
		(3.79,'01.02.2020',3),
		(0.24,'01.03.2020',4),
		(0.97,'01.04.2020',5),
		(0.41,'01.05.2020',6),
		(0.11,'01.06.2020',7),
		(0.38,'01.07.2020',8),
		(0,'01.07.2020',9);

INSERT INTO other_sales(other_sales,sales_date,video_game_id)
VALUES  (8.46,'01.01.2020',1),
		(0.77,'01.01.2020',2),
		(3.31,'01.02.2020',3),
		(1.67,'01.03.2020',4),
		(4.14,'01.04.2020',5),
		(10.57,'01.05.2020',6),
		(1.13,'01.06.2020',7),
		(1.63,'01.07.2020',8),
		(0.71,'01.07.2020',9);
