USE pandemic;

-- Створення атрибутів, що відповідають:
	-- даті першого січня відповідного року,
	-- поточній даті,
	-- різниці в роках двох вищезгаданих колонок.

SELECT 
	MAKEDATE(Year, 1) AS Start_year,
	NOW() AS Current_year,
	TIMESTAMPDIFF(YEAR, MAKEDATE(Year, 1), NOW()) AS Year_difference
FROM infectious_cases;


