-- 5. Watch Time Analysis
-- ● What is the average watch time for LioCinema vs. Jotstar during the analysis period?
-- How do these compare by city tier and device type?

WITH CTE AS (
SELECT "JOTSTAR" platform, city_tier, AVG(total_watch_time_mins) AS avg_watch_time FROM jotstar_db.content_consumption JOIN jotstar_db.subscribers USING(user_id) GROUP BY 1,2
UNION
SELECT "LIOCINEMA" platform,city_tier, AVG(total_watch_time_mins) AS avg_watch_time FROM liocinema_db.content_consumption JOIN liocinema_db.subscribers USING(user_id) GROUP BY 1,2)

SELECT city_tier, 
ROUND(AVG(CASE WHEN platform = "JOTSTAR" THEN avg_watch_time END),0) AS JOTSTAR_AVG_WATCH_TIME,
ROUND(AVG(CASE WHEN platform = "LIOCINEMA" THEN avg_watch_time END),0) AS LIOCINEMA_AVG_WATCH_TIME
 FROM CTE GROUP BY 1;