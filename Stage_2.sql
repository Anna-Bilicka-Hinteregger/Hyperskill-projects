/*
Obtain a list of manufacturers (maker) that produce laptops with a hard disk (hd) space 
of at least 1000 GB, along with the speed (speed), the price (price), and the model (model) 
of those laptops;
Find the maker and model of the laptop from the table Product, and the hd, speed, 
and price from the table Laptop. Order output first by hd, then by descending order speed, 
and then by price.
*/

SELECT
	maker,
	hd,
	speed,
	price,
	Laptop.model
FROM 
	Laptop
LEFT JOIN Product
	ON Product.model = Laptop.model
WHERE
	hd >= 1000
	
ORDER BY 
	hd,
	speed DESC,
	price
;

