#recreate the test db and create in original form
DROP DATABASE orderdb;
CREATE DATABASE orderdb;
USE orderdb;
CREATE TABLE orders(
orderNumber		int				PRIMARY KEY auto_increment,
orderItem		varchar(30),
orderItemType	varchar(30),
orderItemCost	decimal(15,2),
orderItem2		varchar(30),
orderItemType2	varchar(30),
orderItemCost2	decimal(15,2),
orderItem3		varchar(30),
orderItemType3	varchar(30),
orderItemCost3	decimal(15,2),
orderDate		datetime,
DeliveryDate	date,
buyerName		varchar(50),
buyerAddress	varchar(100),
buyerHouseType	varchar(40),
buyerCard		varchar(40),
buyerDoB		date
);

#populate table
INSERT INTO orders VALUES 
(NULL,	'Handbag',	'Wearable', '20.30',	'Hat',	'Wearable',	'5.10',	NULL,	NULL,	NULL,
'2019-04-03 13:50:34',	'2019-04-05',	'Geoff Knightly',	'89, Harrison Road OJ8 75YU',	'Flat',	'32647823647286',	'1934-03-23'),
(NULL,	'Car',	'Vehicle', '5000.99',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	
'2019-02-01 14:30:34',	'2019-05-05',	'Laura Knightly',	'89, Harrison Road OJ8 75YU',	'Flat',	'32647823647286',	'1944-03-23'),
(NULL,	'Dog',	'Pet', '200.00',	'Dog',	'Pet',	'200.00',	'Cat',	'Pet',	'150.00',	
'2004-04-03 10:50:34',	'2011-04-05',	'Harry Harryson',	'33, Randomname Road OJ8 23DU',	'House',	'234234324234',	'1983-03-23'),
(NULL,	'Dinosaur',	'Pet', '50000.00',	'Leather Jacket',	'Wearable',	'90.00',	'DinoCart',	'Vehicle',	'2000.00',	
'1000-04-03 05:50:34',	'1000-04-05',	'Grugg Thunderfist',	'94, Big Rock OJ8 34GF',	'House',	'238497238764',	'1000-01-01'),
(NULL,	'Hat',	'Wearable', '5.10',	'Hat',	'Wearable',	'5.10',	NULL,	NULL,	NULL,	
'2019-04-06 23:50:34',	'2019-04-07',	'Laura Mint',	'4533, Jeg Road OJ8 7DYU',	'Flat',	'365757567567',	'2001-06-23'),
(NULL,	'Van',	'Vehicle', '20000.00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	
'2014-04-03 13:50:34',	'2019-04-05',	'Geoff Knightly',	'81, Harrison Road OJ8 75YU',	'House',	'546546546456',	'1934-03-23')
;

#display bad data
SELECT * FROM orders;