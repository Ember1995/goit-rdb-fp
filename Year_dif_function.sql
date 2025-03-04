DELIMITER //

DROP FUNCTION IF EXISTS pandemic.YearDifference;

CREATE FUNCTION YearDifference(Year INT)
RETURNS INT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result INT;
    SET result = TIMESTAMPDIFF(YEAR, MAKEDATE(Year, 1), NOW());
    RETURN result;
END //

DELIMITER ;

-- Тестування функції на нашому датасеті
SELECT YearDifference(Year) FROM infectious_cases WHERE entity_id=1 LIMIT 1;