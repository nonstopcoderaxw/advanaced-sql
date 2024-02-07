set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	\c $DB_NAME;

	DROP TABLE IF EXISTS Employee;

	CREATE TABLE Employee (
		employee_id int,
		first_name varchar(255),
		last_name varchar(255),
		dept_id varchar(255),
		manager_id int NULL,
		salary int,
		expertise varchar(255)
	);

	\copy Employee FROM './data/example-1/employee.csv' DELIMITER ',' CSV HEADER;
EOSQL


