USE pandemic;

SELECT
	ic.entity_id AS entity_id,
    AVG(Number_rabies) AS avg_number_rabies,
    MIN(Number_rabies) AS min_number_rabies,
    MAX(Number_rabies) AS max_number_rabies
FROM infectious_cases ic
WHERE Number_rabies <> ''
GROUP BY ic.entity_id
ORDER BY avg_number_rabies DESC
LIMIT 10;
