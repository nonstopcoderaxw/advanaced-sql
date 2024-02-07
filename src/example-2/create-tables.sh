set -e

DB_NAME="advanced_sql"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	\c $DB_NAME;
	DROP TABLE IF EXISTS Product;
	DROP TABLE IF EXISTS Package;

	CREATE TABLE Product (
		product_name varchar(255),
		price_per_pound float(1)
	);

	CREATE TABLE Package (
		description varchar(255),
		box_weight float(1)
	);

	\copy Product FROM './data/example-2/product.csv' DELIMITER ',' CSV HEADER;
	\copy Package FROM './data/example-2/package.csv' DELIMITER ',' CSV HEADER;
EOSQL


