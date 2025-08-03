WITH
Computer (model, speed, price) AS (
	SELECT model, speed, price FROM Laptop
	UNION SELECT model, speed, price FROM PC),
	
Speed (maker, model, speed, price) AS (
	SELECT maker, Computer.model, speed, price
	FROM Computer
	LEFT JOIN Product ON Computer.model = Product.model)

SELECT
	maker,
	model,
	speed,
	price
FROM Speed
WHERE
	speed = (SELECT MIN(speed) FROM Speed)
;
