-- 3. User Demographics
-- ● What is the distribution of users by age group, city tier, and subscription plan for each
-- platform?

SELECT L.city_tier,
	L.liocinema_city_tier,
    J.jotstar_city_tier
FROM(
SELECT city_tier, COUNT(city_tier) AS liocinema_city_tier FROM liocinema_db.subscribers GROUP BY 1) L
JOIN
(SELECT city_tier, COUNT(city_tier) AS jotstar_city_tier FROM jotstar_db.subscribers GROUP BY 1) J
ON L.city_tier = J.city_tier;