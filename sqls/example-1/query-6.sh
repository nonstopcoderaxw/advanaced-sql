set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \c $DB_NAME;

  -- Select with row number (from 0 to N)
  -- by default, ROW_NUMBER() starts from 1
  SELECT
    employee_id,
    last_name,
    first_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY employee_id) - 1 as index,
    ROW_NUMBER() OVER (ORDER BY employee_id) as row_number
  FROM employee
EOSQL


