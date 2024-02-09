
CREATE EXTENSION IF NOT EXISTS tablefunc;

-- 1. productname as the center of pivot
-- 2. transpose year and sales data
Select * from
  crosstab('select Productname,year,sales from ProductSales order by 1,2')
  as ProductSales(Productname varchar(50),year1 int,y2 int, y3 int,y4 int,y5 int,y6 int);