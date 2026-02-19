-- 1. Total Users & Growth Trends
-- ● What is the total number of users for LioCinema and Jotstar, and how do they
-- compare in terms of growth trends (January–November 2024)?

SELECT
	(SELECT COUNT(user_id) FROM liocinema_db.subscribers) AS liocinema_users,
    (SELECT COUNT(user_id) FROM jotstar_db.subscribers) AS jotstars_user,
    CASE WHEN (SELECT COUNT(user_id) FROM jotstar_db.subscribers) < (SELECT COUNT(user_id) FROM liocinema_db.subscribers) 
		THEN CONCAT((SELECT COUNT(user_id) FROM liocinema_db.subscribers) - (SELECT COUNT(user_id) FROM jotstar_db.subscribers), " MORE USERS THAN Jotstar") 
        ELSE CONCAT((SELECT COUNT(user_id) FROM jotstar_db.subscribers) - (SELECT COUNT(user_id) FROM liocinema_db.subscribers), " MORE USERS THAN Liocinema") 
        END AS growth_trend;