-- 4. Active vs. Inactive Users
-- ● What percentage of LioCinema and Jotstar users are active vs. inactive? How do
-- these rates vary by age group and subscription plan?

SELECT L.age_group,
	L.liocinema_age_group AS liocinema_inactive_user_percent,
    J.jotstar_age_group AS jotstar_inactive_user_percent
FROM(
SELECT age_group, ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS liocinema_age_group FROM liocinema_db.subscribers GROUP BY 1) L
JOIN
(SELECT age_group, ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS jotstar_age_group FROM jotstar_db.subscribers GROUP BY 1) J
ON L.age_group = J.age_group;