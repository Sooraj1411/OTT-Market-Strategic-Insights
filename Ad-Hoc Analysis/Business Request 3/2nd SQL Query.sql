-- 3. User Demographics
-- ● What is the distribution of users by age group, city tier, and subscription plan for each
-- platform?

SELECT L.age_group,
	L.liocinema_age_group,
    J.jotstar_age_group
FROM(
SELECT age_group, CONCAT(ROUND(COUNT(age_group)*100/(SELECT COUNT(*) FROM liocinema_db.subscribers),2),"%") AS liocinema_age_group FROM liocinema_db.subscribers GROUP BY 1) L
JOIN
(SELECT age_group, CONCAT(ROUND(COUNT(age_group)*100/(SELECT COUNT(*) FROM jotstar_db.subscribers),2),"%") AS jotstar_age_group FROM jotstar_db.subscribers GROUP BY 1) J
ON L.age_group = J.age_group;