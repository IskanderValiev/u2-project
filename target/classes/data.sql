INSERT INTO users(email, name, password, phone, role, state, subscribe, surname)
    SELECT 'iskand.valiev@yandex.ru', 'Admin', '$2a$10$oBjRgWgSZZjla/IeGlLwNOD3eonXOyvdhMQCVuJeDdZFfXTxR9QGy', '79178694211', 'ADMIN', 'CONFIRMED', TRUE, 'Admin'
WHERE not exists(
  SELECT id
  FROM users
  WHERE id = 1
);

CREATE TABLE IF NOT EXISTS persistent_logins (
  username VARCHAR(64) NOT NULL,
  series VARCHAR(64) NOT NULL,
  token VARCHAR(64) NOT NULL,
  last_used TIMESTAMP NOT NULL,
  PRIMARY KEY (series)
);