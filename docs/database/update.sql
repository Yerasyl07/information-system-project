-- Брондалған билетті төленгенге ауыстыру
UPDATE tickets
SET status = 'paid', qr_code = 'QR-ABC-005'
WHERE ticket_id = 3;

-- Сеанс бағасын жаңарту
UPDATE sessions
SET price = 2700.00
WHERE session_id = 1;

-- Пайдаланушы рөлін өзгерту
UPDATE users
SET role = 'client'
WHERE email = 'dauren@cinema.kz';
