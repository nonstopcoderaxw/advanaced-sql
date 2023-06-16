set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \c $DB_NAME;

  --Select the 50% of the employee ordered by salary
  
  WITH employee_ranking AS (
    SELECT
      employee_id,
      last_name,
      first_name,
      salary,
      dept_id,
      NTILE(2) OVER (ORDER BY salary) as ntile
    FROM employee
  )
  SELECT
    employee_id,
    last_name,
    first_name,
    salary,
    dept_id
  FROM employee_ranking
  WHERE ntile = 1
EOSQL


