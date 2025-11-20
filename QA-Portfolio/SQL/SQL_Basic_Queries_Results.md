**Schema (MySQL v5.7)**

    CREATE TABLE users (
      id INTEGER PRIMARY KEY,
      email VARCHAR(100),
      name VARCHAR(100));
    
    CREATE TABLE orders (
      id INTEGER PRIMARY KEY,
      user_id INTEGER,
      product VARCHAR(100),
      amount INTEGER);
    
    INSERT INTO users (id, email, name) VALUES
    (1, 'test.user@email.com', 'Test User'),
    (2, 'forgotten.password@email.com', 'Forgot Password');
    
    INSERT INTO orders (id, user_id, product, amount) VALUES
    (1, 1, 'Bike', 1),
    (2, 1, 'Helmet', 2),
    (3, 2, 'Gloves', 1);
    

---

**Query #1**

    SELECT * FROM users;

| id  | email                        | name            |
| --- | ---------------------------- | --------------- |
| 1   | test.user@email.com          | Test User       |
| 2   | forgotten.password@email.com | Forgot Password |

---
**Query #2**

    
    SELECT * FROM users WHERE email LIKE '%forgotten%';

| id  | email                        | name            |
| --- | ---------------------------- | --------------- |
| 2   | forgotten.password@email.com | Forgot Password |

---
**Query #3**

    
    SELECT user_id, COUNT(*) as order_count FROM orders GROUP BY user_id;

| user_id | order_count |
| ------- | ----------- |
| 1       | 2           |
| 2       | 1           |

---
**Query #4**

    
    SELECT u.email, o.product, o.amount
    FROM users u
    JOIN orders o ON u.id = o.user_id
    WHERE u.id = 1;

| email               | product | amount |
| ------------------- | ------- | ------ |
| test.user@email.com | Bike    | 1      |
| test.user@email.com | Helmet  | 2      |

---
**Query #5**

    
    SELECT u.name, SUM(o.amount) as total_items
    FROM users u
    LEFT JOIN orders o ON u.id = o.user_id
    GROUP BY u.id;

| name            | total_items |
| --------------- | ----------- |
| Test User       | 3           |
| Forgot Password | 1           |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/epcZN2dceWEwhsSzJ1sdc/0)