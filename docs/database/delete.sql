-- Тоқтатылған билеттерді жою
DELETE FROM tickets
WHERE status = 'cancelled';

-- Өткен уақыттағы сеанстарды жою
DELETE FROM sessions
WHERE start_time < '2026-10-01 00:00:00';

-- Бір пайдаланушыны жою
DELETE FROM users
WHERE email = 'madina@cinema.kz';
