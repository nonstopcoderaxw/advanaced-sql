-- https://www.postgresqltutorial.com/postgresql-window-function/postgresql-row_number


---q1
select productname, year, sales, ROW_NUMBER() over (partition by productname order by sales asc)
from ProductSales

---q2
-- DENSE_RANK will give the same rank if the "order by" give the same position
-- ROW_NUMBER will always increase
select productname, year, sales, DENSE_RANK() over (partition by productname order by sales asc)
from ProductSales