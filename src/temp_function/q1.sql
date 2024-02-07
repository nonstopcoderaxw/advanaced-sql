--
WITH f1.sql, this is to replace the query below commented
SELECT  name
       ,CASE get_seniority(tenure) END AS seniority
FROM employees
-- SELECT
-- name,
-- CASE
-- WHEN tenure < 1 THEN "analyst"
-- WHEN tenure BETWEEN 1
-- AND 3 THEN "associate"
-- WHEN tenure BETWEEN 3
-- AND 5 THEN "senior"
-- WHEN tenure > 5 THEN "vp"
-- ELSE "n/a"
-- END AS seniority
-- FROM
-- employees
