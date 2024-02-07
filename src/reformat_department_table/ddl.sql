DROP TABLE IF EXISTS department;

CREATE TABLE department (
    id INT,
    revenue INT,
    month TEXT
);

\COPY department FROM './data/reformat_department_table/department.csv' DELIMITER ',' CSV HEADER;
