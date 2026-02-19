-- 4. Active vs. Inactive Users
-- ● What percentage of LioCinema and Jotstar users are active vs. inactive? How do
-- these rates vary by age group and subscription plan?

SELECT COALESCE(L.subscription_plan, J.subscription_plan) AS plan_details,
	L.liocinema_subscription_plan AS liocinema_inactive_user_percent,
    J.jotstar_subscription_plan AS jotstar_inactive_user_percent
FROM(
SELECT subscription_plan, ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS liocinema_subscription_plan FROM liocinema_db.subscribers GROUP BY 1) L
LEFT JOIN
(SELECT subscription_plan, ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS jotstar_subscription_plan FROM jotstar_db.subscribers GROUP BY 1) J
ON L.subscription_plan = J.subscription_plan

UNION

SELECT COALESCE(L.subscription_plan, J.subscription_plan),
	L.liocinema_subscription_plan,
    J.jotstar_subscription_plan
FROM(
SELECT subscription_plan, ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS liocinema_subscription_plan FROM liocinema_db.subscribers GROUP BY 1) L
RIGHT JOIN
(SELECT subscription_plan, ROUND((COUNT(last_active_date)*100)/COUNT(user_id),2) AS jotstar_subscription_plan FROM jotstar_db.subscribers GROUP BY 1) J
ON L.subscription_plan = J.subscription_plan;