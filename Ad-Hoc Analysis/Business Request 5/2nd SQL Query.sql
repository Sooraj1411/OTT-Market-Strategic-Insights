-- 5. Watch Time Analysis
-- ● What is the average watch time for LioCinema vs. Jotstar during the analysis period?
-- How do these compare by city tier and device type?
 
 WITH CTE AS (SELECT "JOTSTAR" platform, device_type, AVG(total_watch_time_mins) AS avg_watch_time FROM jotstar_db.content_consumption GROUP BY 1,2
UNION
SELECT "LIOCINEMA",device_type, AVG(total_watch_time_mins) AS avg_watch_time FROM liocinema_db.content_consumption GROUP BY 1,2)

SELECT device_type, 
ROUND(AVG(CASE WHEN platform = "JOTSTAR" THEN avg_watch_time END),0) AS JOTSTAR_AVG_TIME,
ROUND(AVG(CASE WHEN platform = "LIOCINEMA" THEN avg_watch_time END),0) AS LIOCINEMA_AVG_TIME
 FROM CTE GROUP BY 1;