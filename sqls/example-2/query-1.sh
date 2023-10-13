set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  \c $DB_NAME;

  -- cross join two tables - create a table with the combo of two tables
  SELECT
    t1.product_name as "Product Name",
    t2.description as "Package Description",
    t1.price_per_pound * t2.box_weight as "Price"
  FROM Product t1
  CROSS JOIN Package t2
EOSQL


