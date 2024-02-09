--------------q1
with t1 as (SELECT str.storename as store_name, prd.Productname as product_name, sum(sl.numberofunitssold) as total_units
  FROM sales sl
  LEFT JOIN DepartmentStores str ON sl.storeid = str.id
  LEFT JOIN products prd ON sl.productid = prd.id
  GROUP BY storename, productname
  ORDER BY storename ASC, productname asc
)
select * from t1;
--------------q2
with t2 as (
  SELECT DISTINCT Productname FROM products ORDER BY Productname ASC
)
select * from t2;
--------------q3
SELECT * FROM crosstab('SELECT str.storename as store_name, prd.Productname as product_name, sum(sl.numberofunitssold) as total_units
  FROM sales sl
  LEFT JOIN DepartmentStores str ON sl.storeid = str.id
  LEFT JOIN products prd ON sl.productid = prd.id
  GROUP BY storename, productname
  ORDER BY storename ASC, productname asc', 
  -- the second args sets the columns
  'SELECT DISTINCT Productname FROM products ORDER BY Productname ASC') 
 as productsales(storename varchar, candle int, sandlewood_stick int, soap int);
  
