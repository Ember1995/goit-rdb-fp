USE pandemic;

SELECT * FROM pandemic.infectious_cases;
SELECT `infectious_cases`.`Entity`,
    `infectious_cases`.`Code`,
    `infectious_cases`.`Year`,
    `infectious_cases`.`Number_yaws`,
    `infectious_cases`.`polio_cases`,
    `infectious_cases`.`cases_guinea_worm`,
    `infectious_cases`.`Number_rabies`,
    `infectious_cases`.`Number_malaria`,
    `infectious_cases`.`Number_hiv`,
    `infectious_cases`.`Number_tuberculosis`,
    `infectious_cases`.`Number_smallpox`,
    `infectious_cases`.`Number_cholera_cases`
FROM `pandemic`.`infectious_cases`;
