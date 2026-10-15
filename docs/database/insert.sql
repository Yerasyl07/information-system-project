-- users (Қазақша есімдер)
INSERT INTO users (name, email, password, role) VALUES
('Айгүл Серікбай', 'aigul@cinema.kz', 'hash1', 'client'),
('Дәурен Қасымов', 'dauren@cinema.kz', 'hash2', 'client'),
('Нұрлан Әбенов', 'nurlan@cinema.kz', 'hash3', 'client'),
('Мадина Тұрсын', 'madina@cinema.kz', 'hash4', 'client'),
('Ерасыл Оспанов', 'yerasyl@cinema.kz', 'hash5', 'client');

-- movies
INSERT INTO movies (title, genre, duration, description) VALUES
('Аватар 2', 'Фантастика', 192, 'Пандора әлеміндегі жаңа оқиға'),
('Опенгеймер', 'Драма', 180, 'Атом бомбасын жасаушы туралы'),
('Барби', 'Комедия', 114, 'Барби әлемінің шытырман оқиғасы');

-- sessions
INSERT INTO sessions (movie_id, hall_name, start_time, price) VALUES
(1, 'Зал №1', '2026-10-05 18:00:00', 2500.00),
(1, 'Зал №2', '2026-10-05 21:00:00', 2000.00),
(2, 'Зал №1', '2026-10-06 19:30:00', 2500.00),
(3, 'VIP Зал', '2026-10-06 16:00:00', 3500.00);

INSERT INTO tickets (user_id, session_id, seat_number, status, qr_code) VALUES
(1, 1, 'A12', 'paid', 'QR-ABC-001'),
(1, 1, 'A13', 'paid', 'QR-ABC-002'),
(2, 2, 'B05', 'booked', NULL),
(2, 3, 'C10', 'paid', 'QR-ABC-004'),
(5, 4, 'VIP03', 'booked', NULL);
