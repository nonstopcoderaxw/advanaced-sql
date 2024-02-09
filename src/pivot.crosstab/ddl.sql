-- reference: 
-- https://www.sqlshack.com/how-to-use-the-crosstab-function-in-postgresql/
-- https://www.commandprompt.com/education/how-to-create-pivot-table-in-postgresql/


DROP TABLE if exists sales;
DROP TABLE if exists ProductSales;
DROP TABLE if exists Departmentstores;
DROP TABLE if exists products;
DROP TABLE if exists sales;
DROP TABLE if exists ProductSales_t;


  create Table ProductSales
  (    Productname varchar(50),
      Year int,
      Sales int
  );
  Insert into ProductSales values
      ('A',2017,100),
      ('A',2018,150),
      ('A',2019,300),
      ('A',2020,500),
      ('A',2021,450),
      ('A',2022,675),
      ('B',2017,0),
      ('B',2018,900),
      ('B',2019,1120),
      ('B',2020,750),
      ('B',2021,1500),
      ('B',2022,1980);


CREATE TABLE Departmentstores (
    id SERIAL PRIMARY KEY NOT NULL,
    storename varchar(50) NOT NULL,
    city varchar(50) NOT NULL
 );
 CREATE TABLE products (
    id SERIAL PRIMARY KEY NOT NULL,
    Productname varchar(50) NOT NULL,
    Productcost int NOT NULL
 );
 CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    storeid int NOT NULL,
    productid int NOT NULL,
    numberofunitssold int NOT NULL
 );
 
insert into Departmentstores (id, storename, city) values
    (1, 'Agarwal Departments', 'Gurugram'),
    (2, 'Gupta Store', 'Noida'),
    (3, 'Balaji Shopee LLC', 'Rohtak')
;
insert into sales (id, storeid, productid, numberofunitssold) values
 (1, 1, 2, 99),(2, 2, 3, 658),(3, 3, 1, 236),
 (4, 2, 3, 122),(5, 2, 1, 122),(6, 1, 1, 58),
 (7, 3, 3, 103),(8, 3, 2, 587),(9, 2, 2, 697),
 (10, 3, 3, 34),(11, 3, 3, 475),(12, 1, 1, 457),
 (13, 3, 2, 555),(14, 2, 3, 951),(15, 3, 2, 328),
 (16, 2, 3, 47),(17, 3, 2, 357),(18, 3, 3, 147),
 (19, 3, 1, 99),(20, 3, 2, 336);
 
 insert into products (id, Productname,productcost) values
 (1, 'candle',10),
 (2, 'sandlewood stick',20),
 (3, 'soap',30);


   create Table ProductSales_t
  (   Productname text,
      Year text,
      Sales text
  );
  Insert into ProductSales_t values
      ('A',2017,100),
      ('A',2018,150),
      ('A',2019,300),
      ('A',2020,500),
      ('A',2021,450),
      ('A',2022,675),
      ('B',2017,0),
      ('B',2018,900),
      ('B',2019,1120),
      ('B',2020,750),
      ('B',2021,1500),
      ('B',2022,1980);