INSERT INTO gener 
(gener_id, gener_name) 
VALUES 
(1, 'Pop'), 
(2, 'Rap'), 
(3, 'Rock'), 
(4, 'Jazz'), 
(5, 'Electronics') 
 
INSERT INTO  executor  
(executor_id, executor_name) 
VALUES 
(1, 'Zivert'), 
(2, 'Dua Lipa'), 
(3, 'Баста'), 
(4, '6ix9ine'), 
(5, 'Imagine Dragons'), 
(6, 'Звери'), 
(7, 'Frank Sinatra'), 
(8, 'Daft Punk'), 
(9, 'Guf') 
 
INSERT INTO  gener_executor  
(gener_id, executor_id) 
VALUES 
(1, 1), 
(1, 2), 
(2, 3), 
(5, 3), 
(2, 4), 
(3, 5), 
(5, 5), 
(3, 6), 
(1, 6), 
(4, 7), 
(5, 8), 
(1, 8), 
(2, 9) 
 
INSERT INTO  album  
VALUES
(1, 'Vinyl #1. Deluxe Version', '2019-09-27'), 
(2, 'Future Nostalgia', '2020-03-27'), 
(3, 'Баста/Гуф', '2010-11-11'), 
(4, 'Dummy Boy', '2018-11-27'), 
(5, 'Origns', '2018-11-09'), 
(6, 'Районы-Кварталы', '2004-02-27'), 
(7, 'Strangers in the Night', '1966-05-27'), 
(8, 'Random Access Memories', '2013-05-21'), 
(9, 'О''пять', '2022-04-11') 
 
INSERT INTO executor_album  
(album_id, executor_id) 
values 
(1,1), 
(2,2), 
(3,3), 
(3,9), 
(4,4), 
(5,5), 
(6,6), 
(7,7), 
(8,8), 
(9,9) 
 
INSERT INTO track  
VALUES
(20, 'Все, что касается', '00:03:24', 6)
(1, 'Безболезненно', '00:04:13', 1), 
(2, 'Beverly Hills', '00:03:39', 1), 
(3, 'Life', '00:03:08', 1), 
(4, 'Future Nostalgia', '00:03:04', 2), 
(5, 'Break My Heart', '00:03:41', 2), 
(6, 'Не всё потеряно пока', '00:04:07', 3), 
(7, 'Как есть', '00:05:14', 3), 
(8, 'Waka', '00:02:09', 4), 
(9, 'Kanga', '00:02:12', 4), 
(10, 'Natural', '00:03:09', 5), 
(11, 'West Coast', '00:03:37', 5), 
(12, 'Районы-Кварталы', '00:03:24', 6), 
(13, 'Напитки покрепче', '00:03:52', 6), 
(14, 'Strangers in the Night', '00:02:25', 7), 
(15, 'All or Nothing at All', '00:03:57', 7), 
(16, 'Get Lucky', '00:06:07', 8), 
(17, 'Giorgio by Moroder', '00:09:04', 8), 
(18, 'Улыбнись', '00:02:45', 9), 
(19, 'Своими силами', '00:04:29', 9) 
 
INSERT INTO compilation 
VALUES 
(1, 'Rus Music', '2022-08-10'), 
(2, 'Pop', '2020-05-19'), 
(3, 'Guf All', '2022-07-15'), 
(4, 'Foreign', '2019-12-08'), 
(5, 'Rock', '2018-12-04'), 
(6, 'Dua Lipa & Imagine Dragons', '2021-02-08'), 
(7, 'Сборник для тренировки', '2019-06-19'), 
(8, 'Сборник: Русский Рэп', '2022-05-23') 
 
INSERT INTO compilation_track 
(compilation_id, track_id) 
VALUES 
(1, 6), (1, 7), (1, 1), (1, 2), (1, 12), (1, 13), (2, 1), (2, 2), (2, 3), (2, 4), (3, 6), (3, 7), (3, 18), (3, 19), 
(4, 4), (4, 5), (4, 8), (4, 9), (4, 10), (4, 11), (4, 14), (4, 15), (4, 16), (4, 17), (5, 10), (5, 11), (6, 4), 
(6, 5), (6, 10), (6, 11), (7, 8), (7, 9), (7, 10), (7, 11), (8, 6), (8, 7), (8, 18), (8, 19)
