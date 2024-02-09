  DROP TABLE if exists ProductSales;

  create Table ProductSales
  (    Productname varchar(50),
      Year int,
      Sales int
  );
  Insert into ProductSales values
      ('A',2017,100),
      ('A',2018,150),
      ('A',2019,500),
      ('A',2020,500),
      ('A',2021,450),
      ('A',2022,675),
      ('B',2017,0),
      ('B',2018,900),
      ('B',2019,1120),
      ('B',2020,1120),
      ('B',2021,1120),
      ('B',2022,1980);