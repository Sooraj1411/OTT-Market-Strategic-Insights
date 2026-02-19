-- 4. Active vs. Inactive Users
-- ● What percentage of LioCinema and Jotstar users are active vs. inactive? How do
-- these rates vary by age group and subscription plan?

SELECT "LIOCINEMA" AS platform,
	ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS inactive_user_percent
FROM liocinema_db.subscribers

UNION

SELECT "JOTSTAR" AS platform,
	ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS inactive_user_percent
FROM jotstar_db.subscribers;