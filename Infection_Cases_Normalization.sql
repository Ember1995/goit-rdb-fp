USE pandemic;

-- Створення колонки entity_id у таблиці infectious_cases
ALTER TABLE infectious_cases
ADD COLUMN entity_id INT;

-- Safe Mode Off
SET SQL_SAFE_UPDATES = 0;

-- Наповнення колонки entity_id у таблиці infectious_cases
UPDATE infectious_cases
JOIN entities ON infectious_cases.Entity = entities.Entity
SET infectious_cases.entity_id = entities.id;

-- Встановлення колонки entity_id зовнішнім ключем для infectious_cases
ALTER TABLE infectious_cases
ADD CONSTRAINT fk_infectious_cases_entity
FOREIGN KEY (entity_id) REFERENCES entities(id);

-- Видалення зайвих колонок Entity та Code з таблиці infectious_cases
ALTER TABLE infectious_cases
DROP COLUMN Entity,
DROP COLUMN Code;

-- Перевірка значень в таблиці infectious_cases
SELECT * FROM infectious_cases;

-- Перевірка кількості значень в таблиці infectious_cases
SELECT COUNT(*) FROM infectious_cases;

-- Safe Mode On
SET SQL_SAFE_UPDATES = 1;