USE pandemic;

-- Створення таблиці
CREATE TABLE IF NOT EXISTS entities (
	id INT AUTO_INCREMENT PRIMARY KEY,
    Code VARCHAR(10),
    Entity VARCHAR(255) NOT NULL UNIQUE
);

-- Наповнення таблиці унікальними значеннями з таблиці infectious_cases
INSERT INTO entities (Code, Entity)
SELECT DISTINCT Code, Entity
FROM infectious_cases;

-- Перевірка кількості значень в отриманій таблиці
SELECT * FROM entities;
