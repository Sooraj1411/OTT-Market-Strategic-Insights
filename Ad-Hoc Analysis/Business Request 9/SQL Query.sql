-- 9. Paid Users Distribution
-- ● How does the paid user percentage (e.g., Basic, Premium for LioCinema; VIP,
-- Premium for Jotstar) vary across different platforms? Analyse the proportion of
-- premium users in Tier 1, Tier 2, and Tier 3 cities and identify any notable trends or
-- differences.

(SELECT city_tier,
CONCAT(ROUND(SUM(CASE WHEN COALESCE(new_subscription_plan,subscription_plan) IN ("Basic", "Premium") THEN 1 ELSE 0
END)*100/COUNT(*),2), "%") AS total_paid_users, "Liocinema" as Platform
 FROM liocinema_db.subscribers ls
 GROUP BY 1 ORDER BY 2 DESC)
 
 UNION
 
 (SELECT city_tier,
CONCAT(ROUND(SUM(CASE WHEN COALESCE(new_subscription_plan, sUbscription_plan) IN ("VIP", "Premium") THEN 1 ELSE 0
END)*100/COUNT(*),2), "%") AS total_paid_users, "Jotstar" as Platform
 FROM jotstar_db.subscribers
 GROUP BY 1 ORDER BY 2 DESC);