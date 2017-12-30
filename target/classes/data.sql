INSERT INTO users(email, name, password, phone, role, state, subscribe, surname)
    SELECT 'iskand.valiev@yandex.ru', 'Admin', '$2a$10$oBjRgWgSZZjla/IeGlLwNOD3eonXOyvdhMQCVuJeDdZFfXTxR9QGy', '79178694211', 'ADMIN', 'CONFIRMED', TRUE, 'Admin'
WHERE not exists(
  SELECT id
  FROM users
  WHERE id = 1
);