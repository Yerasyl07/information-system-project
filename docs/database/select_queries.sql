1. SELECT арқылы қажетті мәліметтерді алу; 
-- Барлық фильмдерді көрсету
SELECT * FROM movies;

-- Тек фильм атауы мен жанрын көрсету
SELECT title, genre FROM movies;

-- Пайдаланушылардың аты мен email-ін көрсету
SELECT name, email FROM users;

2. WHERE арқылы мәліметтерді сүзгілеу; 
-- Тек "Фантастика" жанрындағы фильмдер
SELECT * FROM movies
WHERE genre = 'Фантастика';

-- Бағасы 2500-ден қымбат сеанстар
SELECT * FROM sessions
WHERE price > 2500;

-- Рөлі 'client' пайдаланушылар
SELECT * FROM users
WHERE role = 'client';

3. бірнеше шарттарды қолдану; 
-- Ұзақтығы 150 минуттан көп ЖӘНЕ жанры 'Драма' фильмдер
SELECT * FROM movies
WHERE duration > 150 AND genre = 'Драма';

-- Бағасы 2500-ден қымбат НЕМЕСЕ зал атауы 'VIP Зал' сеанстар
SELECT * FROM sessions
WHERE price > 2500 OR hall_name = 'VIP Зал';

-- Белгілі бір уақыт аралығындағы сеанстар
SELECT * FROM sessions
WHERE start_time BETWEEN '2026-10-05 00:00:00' AND '2026-10-06 23:59:59';

4. DISTINCT арқылы қайталанатын мәндерді жою; 
-- Қандай жанрлар бар (қайталанбайтын)
SELECT DISTINCT genre FROM movies;

-- Қандай залдар бар
SELECT DISTINCT hall_name FROM sessions;

-- Қандай рөлдер бар
SELECT DISTINCT role FROM users;

5. ORDER BY арқылы сұрыптау; 
-- Фильмдерді ұзақтығы бойынша кему ретімен сұрыптау
SELECT title, duration FROM movies
ORDER BY duration DESC;

-- Сеанстарды бағасы бойынша өсу ретімен сұрыптау
SELECT session_id, hall_name, price FROM sessions
ORDER BY price ASC;

-- Пайдаланушыларды аты бойынша алфавиттік ретпен сұрыптау
SELECT name, email FROM users
ORDER BY name ASC;

6. GROUP BY арқылы мәліметтерді топтау; 
-- Әр жанрдағы фильмдер санын анықтау
SELECT genre, COUNT(*) AS film_count
FROM movies
GROUP BY genre;

-- Әр залдағы сеанстар санын анықтау
SELECT hall_name, COUNT(*) AS session_count
FROM sessions
GROUP BY hall_name;

7. агрегаттық функцияларды қолдану; 
-- Фильмдердің орташа ұзақтығы
SELECT AVG(duration) AS avg_duration FROM movies;

-- Ең қымбат билет бағасы
SELECT MAX(price) AS max_price FROM sessions;

-- Ең арзан билет бағасы
SELECT MIN(price) AS min_price FROM sessions;

-- Барлық сеанстардың жалпы бағасы
SELECT SUM(price) AS total_price FROM sessions;

-- Барлық билет саны
SELECT COUNT(*) AS total_tickets FROM tickets;

8. HAVING арқылы топталған нәтижелерді сүзгілеу қажет.
-- 1-ден көп фильмі бар жанрлар
INSERT INTO movies (title, genre, duration, description) VALUES
('Дюна 2', 'Фантастика', 166, 'Арракис планетасындағы шайқас'),
('Интерстеллар', 'Фантастика', 169, 'Ғарыштағы саяхат туралы');

SELECT genre, COUNT(*) AS film_count
FROM movies
GROUP BY genre
HAVING COUNT(*) > 1;

-- Орташа бағасы 2500-ден жоғары залдар
SELECT hall_name, AVG(price) AS avg_price
FROM sessions
GROUP BY hall_name
HAVING AVG(price) > 2500;
