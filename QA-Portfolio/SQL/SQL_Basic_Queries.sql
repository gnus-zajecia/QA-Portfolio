CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  email VARCHAR(100),
  name VARCHAR(100)
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  product VARCHAR(100),
  amount INTEGER
);

INSERT INTO users (id, email, name) VALUES
(1, 'test.user@email.com', 'Test User'),
(2, 'forgotten.password@email.com', 'Forgot Password');

INSERT INTO orders (id, user_id, product, amount) VALUES
(1, 1, 'Bike', 1),
(2, 1, 'Helmet', 2),
(3, 2, 'Gloves', 1);
