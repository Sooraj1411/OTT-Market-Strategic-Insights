-- 3. User Demographics
-- ● What is the distribution of users by age group, city tier, and subscription plan for each
-- platform?

WITH JOTSTAR_AGE_GROUP AS (SELECT age_group, COUNT(age_group) AS age_group_dist,CONCAT(ROUND(COUNT(age_group)*100/(SELECT COUNT(*) FROM jotstar_db.subscribers),2),"%") AS `% of whole`  FROM jotstar_db.subscribers GROUP BY 1),
LIOCINEMA_AGE_GROUP AS (SELECT age_group, COUNT(age_group) AS age_group_dist,CONCAT(ROUND(COUNT(age_group)*100/(SELECT COUNT(*) FROM liocinema_db.subscribers),2),"%") AS `% of whole` FROM liocinema_db.subscribers GROUP BY 1)

SELECT "JOTSTAR" AS platform, age_group, age_group_dist,`% of whole` FROM JOTSTAR_AGE_GROUP
UNION
SELECT "LIOCINEMA" AS platform, age_group, age_group_dist,`% of whole` FROM LIOCINEMA_AGE_GROUP;