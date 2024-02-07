set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	DROP TABLE IF EXISTS staff_members;

	CREATE TABLE staff_members (
	    id text,
	    manager_id text
	);

	\copy staff_members FROM './data/recursive/staff_members.csv' DELIMITER ',' CSV HEADER;
EOSQL
