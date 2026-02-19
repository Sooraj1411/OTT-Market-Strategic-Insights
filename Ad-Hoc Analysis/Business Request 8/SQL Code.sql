-- 8. Upgrade Patterns
-- ● What are the most common upgrade transitions (e.g., Free to Basic, Free to VIP,
-- Free to Premium) for LioCinema and Jotstar? How do these differ across platforms?

(SELECT 'LIOCINEMA' AS "platform",DATE_FORMAT(plan_change_date, "%M-%Y") AS month_name,COUNT(*) AS upgrade_count FROM liocinema_db.subscribers 
WHERE new_subscription_plan IS NOT NULL
AND ((subscription_plan = "Basic" AND new_subscription_plan = "Premium")
OR (subscription_plan = "Free" AND new_subscription_plan = "Premium")
OR (subscription_plan = "Free" AND new_subscription_plan = "Basic"))
GROUP BY 1,2)
UNION ALL
(SELECT 'JOTSTAR' AS "platform",DATE_FORMAT(plan_change_date, "%M-%Y") AS month_name,COUNT(*) AS upgrade_count FROM jotstar_db.subscribers 
WHERE new_subscription_plan IS NOT NULL
AND ((subscription_plan = "VIP" AND new_subscription_plan = "Premium")
OR (subscription_plan = "Free" AND new_subscription_plan = "Premium")
OR (subscription_plan = "Free" AND new_subscription_plan = "VIP"))
GROUP BY 1,2) ORDER BY 1 DESC,3 DESC;