--  6. Inactivity Correlation
-- ● How do inactivity patterns correlate with total watch time or average watch time? Are
-- less engaged users more likely to become inactive?


SELECT "JOTSTAR" AS platform,CASE WHEN last_active_date IS NOT NULL THEN "Inactive" ELSE "Active" END AS "user_status",
COUNT(DISTINCT user_id) AS users, AVG(total_watch_time_mins) avg_watch_time
FROM jotstar_db.content_consumption JOIN jotstar_db.subscribers USING(user_id) GROUP BY 1,2

UNION

SELECT "LIOCINEMA" AS platform,CASE WHEN last_active_date IS NOT NULL THEN "Inactive" ELSE "Active" END AS "user_status",
COUNT(DISTINCT user_id) AS users, AVG(total_watch_time_mins) avg_watch_time
FROM liocinema_db.content_consumption JOIN liocinema_db.subscribers USING(user_id) GROUP BY 1,2;