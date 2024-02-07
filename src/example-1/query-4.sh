set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \c $DB_NAME;

  --Select the second highest salary employee of each apartment
  WITH employee_ranking AS (
    SELECT
      employee_id,
      last_name,
      first_name,
      salary,
      dept_id,
      RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) as ranking
    FROM employee
  )
  SELECT
    ranking,
    employee_id,
    last_name,
    first_name,
    salary,
    dept_id
  FROM employee_ranking
  WHERE ranking = 2
  ORDER BY ranking;
EOSQL


