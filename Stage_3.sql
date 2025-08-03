SELECT
	count(maker) as number_of_unique_makers
FROM
	(SELECT 
		maker,
		count(model) as model_count
	FROM Product
	group by maker
	having model_count = 1) AS unique_maker
;