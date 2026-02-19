--  2. Content Library Comparison
-- ● What is the total number of contents available on LioCinema vs. Jotstar? How do
-- they differ in terms of language and content type?


WITH jotstar_summary (total_content, total_language, language_name, total_content_type, content_type) AS(
	SELECT COUNT(*),
	COUNT(DISTINCT language),
    GROUP_CONCAT(DISTINCT language),
    COUNT(DISTINCT content_type),
    GROUP_CONCAT(DISTINCT content_type)
    FROM jotstar_db.contents
),
liocinema_summary (total_content, total_language, language_name, total_content_type, content_type) AS(
	SELECT COUNT(*),
	COUNT(DISTINCT language),
    GROUP_CONCAT(DISTINCT language),
    COUNT(DISTINCT content_type),
    GROUP_CONCAT(DISTINCT content_type)
    FROM liocinema_db.contents
)

SELECT "JOTSTAR" AS ott ,total_content, total_language, language_name, total_content_type, content_type FROM jotstar_summary
UNION
SELECT "LIO CINEMA", total_content, total_language, language_name, total_content_type, content_type FROM liocinema_summary;