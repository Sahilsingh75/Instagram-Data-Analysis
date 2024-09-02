SELECT post_id, AVG(likes) AS avg_likes, AVG(comments) AS avg_comments
FROM instagram_posts
GROUP BY post_id
ORDER BY avg_likes DESC, avg_comments DESC
LIMIT 10;
