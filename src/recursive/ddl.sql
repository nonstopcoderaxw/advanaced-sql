DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY, 
  full_name VARCHAR NOT NULL, 
  manager_id INT
);

INSERT INTO employees (employee_id, full_name, manager_id, tenure) 
VALUES 
  (1, 'Michael North', NULL, 1), 
  (2, 'Megan Berry', 1, 2), 
  (3, 'Sarah Berry', 1, 3), 
  (4, 'Zoe Black', 1, 4), 
  (5, 'Tim James', 1, 5), 
  (6, 'Bella Tucker', 2, 3), 
  (7, 'Ryan Metcalfe', 2, 4), 
  (8, 'Max Mills', 2, 3), 
  (9, 'Benjamin Glover', 2, 2), 
  (10, 'Carolyn Henderson', 3, 1), 
  (11, 'Nicola Kelly', 3, 4), 
  (12, 'Alexandra Climo', 3, 5), 
  (13, 'Dominic King', 3, 5), 
  (14, 'Leonard Gray', 4, 2), 
  (15, 'Eric Rampling', 4, 1), 
  (16, 'Piers Paige', 7, 1), 
  (17, 'Ryan Henderson', 7, 2), 
  (18, 'Frank Tucker', 8, 5), 
  (19, 'Nathan Ferguson', 8, 4), 
  (20, 'Kevin Rampling', 8, 2);