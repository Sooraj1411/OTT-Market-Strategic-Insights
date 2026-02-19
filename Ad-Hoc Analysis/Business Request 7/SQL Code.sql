-- 7. Downgrade Trends
-- ● How do downgrade trends differ between LioCinema and Jotstar? Are downgrades
-- more prevalent on one platform compared to the other?

(SELECT 'LIOCINEMA' AS "platform",DATE_FORMAT(plan_change_date, "%M-%Y") AS month_name,COUNT(*) AS downgrade_count FROM liocinema_db.subscribers 
WHERE new_subscription_plan IS NOT NULL
AND ((subscription_plan = "Premium" AND new_subscription_plan = "Basic")
OR (subscription_plan = "Premium" AND new_subscription_plan = "Free")
OR (subscription_plan = "Basic" AND new_subscription_plan = "Free"))
GROUP BY 1,2)
UNION ALL
(SELECT 'JOTSTAR' AS "platform",DATE_FORMAT(plan_change_date, "%M-%Y") AS month_name,COUNT(*) AS downgrade_count FROM jotstar_db.subscribers 
WHERE new_subscription_plan IS NOT NULL
AND ((subscription_plan = "Premium" AND new_subscription_plan = "VIP")
OR (subscription_plan = "Premium" AND new_subscription_plan = "Free")
OR (subscription_plan = "VIP" AND new_subscription_plan = "Free"))
GROUP BY 1,2) ORDER BY 1 DESC,3 DESC;