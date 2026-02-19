-- 3. User Demographics
-- ● What is the distribution of users by age group, city tier, and subscription plan for each
-- platform?

SELECT COALESCE(L.subscription_plan, J.subscription_plan) AS plan_details,
	L.liocinema_subscription_plan,
    J.jotstar_subscription_plan
FROM(
SELECT subscription_plan, COUNT(subscription_plan) AS liocinema_subscription_plan FROM liocinema_db.subscribers GROUP BY 1) L
LEFT JOIN
(SELECT subscription_plan, COUNT(subscription_plan) AS jotstar_subscription_plan FROM jotstar_db.subscribers GROUP BY 1) J
ON L.subscription_plan = J.subscription_plan

UNION

SELECT COALESCE(L.subscription_plan, J.subscription_plan),
	L.liocinema_subscription_plan,
    J.jotstar_subscription_plan
FROM(
SELECT subscription_plan, COUNT(subscription_plan) AS liocinema_subscription_plan FROM liocinema_db.subscribers GROUP BY 1) L
RIGHT JOIN
(SELECT subscription_plan, COUNT(subscription_plan) AS jotstar_subscription_plan FROM jotstar_db.subscribers GROUP BY 1) J
ON L.subscription_plan = J.subscription_plan;