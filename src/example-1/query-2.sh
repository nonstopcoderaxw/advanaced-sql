set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \c $DB_NAME;

  --Select top 5 salary employee
  WITH employee_ranking AS (
    SELECT
      employee_id,
      last_name,
      first_name,
      salary,
      RANK() OVER (ORDER BY salary DESC) as ranking
    FROM employee
  )
  SELECT
    employee_id,
    last_name,
    first_name,
    salary
  FROM employee_ranking
  WHERE ranking <= 5
  ORDER BY ranking;
EOSQL


