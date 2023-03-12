
create table Product (
maker varchar(50),
model int primary key,
typ varchar(50) 
);


create table Printer (
code int,
model int,
color varchar(10),
type varchar(50),
price money,
foreign key (model)
	references Product (model)
);

create table Laptop(
code int,
model	int,
speed	int,
ram	 int,
hd int,
price money,
screen int,
foreign key (model)
	references Product (model));

insert into Laptop
values (1, 1732, 350, 32, 4.0, 700, 11),
(2, 7232, 500, 64, 8.0, 970, 12),
(3,	2232,	750,	128,	12.0,	1200, 14),
(4,	1298,	600,	64,	10.0, 1050, 15),
(5,	1752,	750,	128,	10.0,	1150, 14),
(6,	1299,	450,	64,	10.0, 950, 12);

INSERT into Product 
values ('A',1232,'PC'),
('A',1432,'PC'),
('D',8232,'Printer'),
('B',1532,'PC'),
('C',1632,'Printer'),
('D',1732,'Laptop'),
('A',1412,'PC'),
('C',1832,'Printer'),
('A',7232,'Laptop'),
('B',1932,'Printer'),
('A',6232,'PC'),
('C',5332,'Printer'),
('A',1292,'PC'),
('B',2232,'Laptop'),
('A',3232,'PC'),
('D',4232,'Printer');

INSERT into Product 
values ('A',1298,'Laptop'),
('A',1752,'Laptop'),
('D',1299,'Laptop');


insert into Printer 
values (1,8232,'n','Laser',40000),
(1,1632,'y','Jet',40000),
(2,1832,'n','Jet',50000),
(3,1932,'r','Laser',40000),
(4,5332,'b','Matrix',60000),
(5,4232,'n','Matrix',40000),
(6,8232,'b','Laser',30000);


select * from printer ;
select * from Product;

--2.Найдите производителей принтеров. Вывести: maker
SELECT DISTINCT maker
FROM Product
WHERE model IN (SELECT model
FROM Printer);

--3 Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
select model, ram, screen 
from Laptop
where price > '1000';

select * from Laptop;

