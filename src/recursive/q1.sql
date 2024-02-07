-- find all the employees who report to employee (id = 2)
-- base case: the condition that stops a recursive
-- recursive case: the function that calls itself
WITH RECURSIVE subordinates AS (
-- base case
  SELECT 
    employee_id, 
    manager_id, 
    full_name 
  FROM 
    employees 
  WHERE 
    employee_id = 2 
  UNION 
-- recursive case
  SELECT 
    e.employee_id, 
    e.manager_id, 
    e.full_name 
  FROM 
    employees e 
    INNER JOIN subordinates s ON s.employee_id = e.manager_id
) 
SELECT * FROM subordinates;