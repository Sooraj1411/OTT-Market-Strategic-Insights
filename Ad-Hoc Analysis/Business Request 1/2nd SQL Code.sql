-- 1. Total Users & Growth Trends
-- ● What is the total number of users for LioCinema and Jotstar, and how do they
-- compare in terms of growth trends (January–November 2024)?

with LC as (WITH liocinema_data AS(
	SELECT DATE_FORMAT(subscription_date, "%Y-%m") AS MONTH,
		COUNT(user_id) users
	 FROM liocinema_db.subscribers
	 GROUP BY 1)
SELECT *,
ROUND(((users - LAG(users) OVER (ORDER BY MONTH))/LAG(users) OVER (ORDER BY MONTH))*100,2) AS growth_percent
 FROM liocinema_data),
 
JS as(WITH jotstar_data AS(
	SELECT DATE_FORMAT(subscription_date, "%Y-%m") AS MONTH,
		COUNT(user_id) users
	 FROM jotstar_db.subscribers
	 GROUP BY 1)
SELECT *,
ROUND(((users - LAG(users) OVER (ORDER BY MONTH))/LAG(users) OVER (ORDER BY MONTH))*100,2) AS growth_percent
 FROM jotstar_data)
 
 Select *,"Liocinema" as Platform from LC
 union
 Select *, "Jotstar" as Platform from JS;