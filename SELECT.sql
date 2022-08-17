--количество исполнителей в каждом жанре 
SELECT gener_id, count(executor_id) FROM gener_executor ge 
GROUP BY ge.gener_id; 
 
--количество треков, вошедших в альбомы 2019-2020 годов 
SELECT album_id, album_date, track_album, count(track_id) track_q FROM album a  
JOIN track t ON a.album_id = t.track_album 
WHERE a.album_date BETWEEN date '2019-01-01' AND date '2020-12-31' 
GROUP BY a.album_id, t.track_album   
ORDER BY track_q DESC; 
 
--средняя продолжительность треков по каждому альбому 
SELECT track_album, avg(track_time) FROM track t  
GROUP BY track_album;  
 
--все исполнители, которые не выпустили альбомы в 2020 году 
SELECT executor_id, album_date FROM executor_album ea 
JOIN album a ON ea.executor_id = a.album_id 
WHERE a.album_date >= date '2021-01-01' OR a.album_date <= date '2019-12-31'; 
 
--названия сборников, в которых присутствует конкретный исполнитель (Guf) 
SELECT DISTINCT compilation_name FROM compilation c  
JOIN compilation_track ct ON ct.compilation_id = c.compilation_id 
JOIN track t ON t.track_id = ct.track_id  
JOIN executor_album ea ON ea.album_id  = t.track_album 
JOIN executor e ON e.executor_id = ea.executor_id 
WHERE executor_name LIKE 'Guf'; 
 
--название альбомов, в которых присутствуют исполнители более 1 жанра 
SELECT album_name FROM album a 
JOIN executor_album ea ON a.album_id = ea.album_id 
JOIN executor e ON e.executor_id = ea.executor_id 
JOIN gener_executor ge ON ge.executor_id = e.executor_id 
JOIN gener g ON g.gener_id = ge.gener_id 
GROUP BY a.album_name 
HAVING count(DISTINCT g.gener_name ) > 1
ORDER BY a.album_name;

--наименование треков, которые не входят в сборники 
SELECT track_name, t.track_id  FROM track t
WHERE t.track_id NOT IN (SELECT ct.track_id FROM compilation_track ct) ; 
 
--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько) 
SELECT e.executor_name  FROM track t 
JOIN album a ON a.album_id = t.track_album 
JOIN executor_album ea ON ea.album_id  = t.track_album 
JOIN executor e ON e.executor_id = ea.executor_id  
WHERE track_time = (SELECT min(track_time) FROM track);  
 
--название альбомов, содержащих наименьшее количество треков 
SELECT DISTINCT a.album_name FROM album a
JOIN track t ON t.track_album = a.album_id
WHERE t.track_album IN (
SELECT t2.track_album FROM track t2 GROUP BY t2.track_album
HAVING count(t2.track_album) = (
SELECT count(t3.track_album) FROM track t3 GROUP BY t3.track_album ORDER BY count LIMIT 1 ))
ORDER BY 1; 


